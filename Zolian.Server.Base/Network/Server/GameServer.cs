﻿using System.Collections.Concurrent;
using System.Globalization;
using System.Net;
using System.Numerics;
using System.Security.Cryptography;
using System.Text;
using Chaos.Common.Definitions;
using Chaos.Common.Identity;
using Darkages.Common;
using Darkages.Database;
using Darkages.Enums;
using Darkages.GameScripts.Mundanes.Generic;
using Darkages.Interfaces;
using Darkages.Models;
using Darkages.Network.Client;
using Darkages.Network.Client.Abstractions;
using Darkages.Network.Components;
using Darkages.Object;
using Darkages.Scripting;
using Darkages.Sprites;
using Darkages.Systems;
using Darkages.Types;
using Microsoft.AppCenter.Analytics;
using Microsoft.AppCenter.Crashes;
using Microsoft.Extensions.Logging;
using ServiceStack;
using MapFlags = Darkages.Enums.MapFlags;
using Stat = Darkages.Enums.Stat;

namespace Darkages.Network.Server;

public class GameServer
{
    public readonly ObjectService ObjectFactory = new();
    public readonly ObjectManager ObjectHandlers = new();
    private static Dictionary<(Race race, Class path, Class pastClass), string> _skillMap = new();
    private ConcurrentDictionary<Type, WorldServerComponent> _serverComponents;
    private DateTime _fastGameTime;
    private DateTime _normalGameTime;
    private DateTime _slowGameTime;
    private DateTime _abilityGameTime;
    private TimeSpan _clientGameTimeSpan;
    private TimeSpan _abilityGameTimeSpan;
    public byte CurrentEncryptKey;
    private const int FastGameSpeed = 20;
    private const int NormalGameSpeed = 40;
    private const int SlowGameSpeed = 80;
    private const int AbilityGameSpeed = 500;

    #region Client Handlers
  

    /// <summary>
    /// On Client Dropping Gold on Map
    /// </summary>
    protected override void Format24Handler(WorldClient client, ClientFormat24 format)
    {
        if (!CanInteract(client, false, true, false)) return;
        if (!client.Aisling.CanAttack) return;

        if (client.Aisling.GoldPoints >= format.GoldAmount)
        {
            client.Aisling.GoldPoints -= format.GoldAmount;
            if (client.Aisling.GoldPoints <= 0)
                client.Aisling.GoldPoints = 0;

            client.SendMessage(Scope.Self, 0x02, $"{ServerSetup.Instance.Config.YouDroppedGoldMsg}");
            client.SendMessage(Scope.NearbyAislingsExludingSelf, 0x02, $"{ServerSetup.Instance.Config.UserDroppedGoldMsg.Replace("noname", client.Aisling.Username)}");

            Money.Create(client.Aisling, format.GoldAmount, new Position(format.X, format.Y));
            client.SendStats(StatusFlags.StructC);
        }
        else
        {
            client.SendMessage(0x02, $"{ServerSetup.Instance.Config.NotEnoughGoldToDropMsg}");
        }
    }

    /// <summary>
    /// On Item Dropped on Sprite
    /// </summary>
    protected override void Format29Handler(WorldClient client, ClientFormat29 format)
    {
        if (!CanInteract(client, false, true, false)) return;

        client.Send(new ServerFormat4B(format.ID, 0));
        client.Send(new ServerFormat4B(format.ID, 1, format.ItemSlot));
        var result = new List<Sprite>();
        var listA = client.Aisling.GetObjects<Monster>(client.Aisling.Map, i => i != null && i.WithinRangeOf(client.Aisling, ServerSetup.Instance.Config.WithinRangeProximity));
        var listB = client.Aisling.GetObjects<Mundane>(client.Aisling.Map, i => i != null && i.WithinRangeOf(client.Aisling, ServerSetup.Instance.Config.WithinRangeProximity));
        var listC = client.Aisling.GetObjects<Aisling>(client.Aisling.Map, i => i != null && i.WithinRangeOf(client.Aisling, ServerSetup.Instance.Config.WithinRangeProximity));
        result.AddRange(listA);
        result.AddRange(listB);
        result.AddRange(listC);

        foreach (var sprite in result.Where(sprite => sprite.Serial == format.ID))
        {
            switch (sprite)
            {
                case Monster monster:
                    {
                        var script = monster.Scripts.Values.First();
                        var item = client.Aisling.Inventory.Items[format.ItemSlot];
                        client.Aisling.EquipmentManager.RemoveFromInventory(item, true);
                        script?.OnItemDropped(client, item);
                        break;
                    }
                case Mundane mundane:
                    {
                        var script = mundane.Scripts.Values.First();
                        var item = client.Aisling.Inventory.Items[format.ItemSlot];
                        client.EntryCheck = mundane.Serial;
                        mundane.Bypass = true;
                        script?.OnItemDropped(client, item);
                        break;
                    }
                case Aisling aisling:
                    {
                        if (format.ItemSlot == 0) return;
                        var item = client.Aisling.Inventory.Items[format.ItemSlot];

                        if (item.DisplayName.StringContains("deum"))
                        {
                            var script = item.Scripts.Values.First();
                            client.Aisling.Inventory.RemoveRange(client, item, 1);
                            client.Aisling.ThrewHealingPot = true;

                            var action = new ServerFormat1A
                            {
                                Serial = aisling.Serial,
                                Number = 0x06,
                                Speed = 50
                            };

                            script?.OnUse(aisling, format.ItemSlot);
                            client.Aisling.Show(Scope.NearbyAislings, action);
                        }

                        if (item.DisplayName == "Elixir of Life")
                        {
                            client.Aisling.Inventory.RemoveRange(client, item, 1);
                            client.Aisling.ThrewHealingPot = true;
                            client.Aisling.ReviveFromAfar(aisling);
                        }
                        break;
                    }
            }
        }
    }

    /// <summary>
    /// On Gold Dropped on Sprite
    /// </summary>
    protected override void Format2AHandler(WorldClient client, ClientFormat2A format)
    {
        if (!CanInteract(client, false, true, false)) return;
        if (!client.Aisling.LoggedIn) return;

        var result = new List<Sprite>();
        var listA = client.Aisling.GetObjects<Monster>(client.Aisling.Map, i => i != null && i.WithinRangeOf(client.Aisling, ServerSetup.Instance.Config.WithinRangeProximity));
        var listB = client.Aisling.GetObjects<Mundane>(client.Aisling.Map, i => i != null && i.WithinRangeOf(client.Aisling, ServerSetup.Instance.Config.WithinRangeProximity));
        var listC = client.Aisling.GetObjects<Aisling>(client.Aisling.Map, i => i != null && i.WithinRangeOf(client.Aisling, ServerSetup.Instance.Config.WithinRangeProximity));

        result.AddRange(listA);
        result.AddRange(listB);
        result.AddRange(listC);

        foreach (var sprite in result.Where(sprite => sprite.Serial == format.ID))
        {
            switch (sprite)
            {
                case Monster monster:
                    {
                        var script = monster.Scripts.Values.First();

                        if (client.Aisling.GoldPoints >= format.Gold)
                        {
                            client.Aisling.GoldPoints -= format.Gold;
                            client.SendStats(StatusFlags.WeightMoney);
                        }
                        else
                            break;

                        script?.OnGoldDropped(client, format.Gold);

                        break;
                    }
                case Mundane mundane:
                    {
                        var script = mundane.Scripts.Values.First();

                        if (client.Aisling.GoldPoints >= format.Gold)
                        {
                            client.Aisling.GoldPoints -= format.Gold;
                            client.SendStats(StatusFlags.WeightMoney);
                        }
                        else
                            break;

                        script?.OnGoldDropped(client, format.Gold);

                        break;
                    }
                case Aisling aisling:
                    {
                        var format4AReceiver = new ClientFormat4A
                        {
                            Id = (uint)client.Aisling.Serial,
                            Type = byte.MinValue,
                            OpCode = 74
                        };

                        var format4ASender = new ClientFormat4A
                        {
                            Gold = format.Gold,
                            Id = format.ID,
                            Type = 0x03,
                            OpCode = 74
                        };

                        Format4AHandler(aisling.Client, format4AReceiver);
                        Format4AHandler(client, format4ASender);
                        break;
                    }
            }
        }
    }

    /// <summary>
    /// On Player Request Profile - Load Profile
    /// </summary>
    protected override void Format2DHandler(WorldClient client, ClientFormat2D format)
    {
        if (client?.Aisling == null) return;
        if (client is not { Authenticated: true }) return;
        if (!client.Aisling.LoggedIn) return;

        if (client.Aisling.Skulled)
        {
            client.SystemMessage(ServerSetup.Instance.Config.ReapMessageDuringAction);
            client.Interrupt();
            return;
        }

        client.Send(new ServerFormat39(client.Aisling));
    }

    /// <summary>
    /// On Party Join Request
    /// </summary>
    protected override void Format2EHandler(WorldClient client, ClientFormat2E format)
    {
        if (!CanInteract(client, false, false, false)) return;
        if (!client.Aisling.LoggedIn) return;
        if (client.IsRefreshing) return;
        if (client.Aisling.IsDead()) return;

        if (format.Type != 0x02) return;

        var player = ObjectHandlers.GetObject<Aisling>(client.Aisling.Map, i => string.Equals(i.Username, format.Name, StringComparison.CurrentCultureIgnoreCase)
            && i.WithinRangeOf(client.Aisling));

        if (player == null)
        {
            client.SendMessage(0x02, $"{ServerSetup.Instance.Config.BadRequestMessage}");
            return;
        }

        if (player.PartyStatus != GroupStatus.AcceptingRequests)
        {
            client.SendMessage(0x02, $"{ServerSetup.Instance.Config.GroupRequestDeclinedMsg.Replace("noname", player.Username)}");
            return;
        }

        if (Party.AddPartyMember(client.Aisling, player))
        {
            client.Aisling.PartyStatus = GroupStatus.AcceptingRequests;
            if (client.Aisling.GroupParty.PartyMembers.Any(other => other.Invisible))
                client.UpdateDisplay();
            return;
        }

        Party.RemovePartyMember(player);
    }

    /// <summary>
    /// On Toggle Group Button
    /// </summary>
    protected override void Format2FHandler(WorldClient client, ClientFormat2F format)
    {
        if (client is not { Authenticated: true }) return;

        var mode = client.Aisling.PartyStatus;

        mode = mode switch
        {
            GroupStatus.AcceptingRequests => GroupStatus.NotAcceptingRequests,
            GroupStatus.NotAcceptingRequests => GroupStatus.AcceptingRequests,
            _ => mode
        };

        client.Aisling.PartyStatus = mode;

        if (client.Aisling.PartyStatus == GroupStatus.NotAcceptingRequests)
        {
            if (client.Aisling.LeaderPrivileges)
            {
                if (!ServerSetup.Instance.GlobalGroupCache.TryGetValue(client.Aisling.GroupId, out var group)) return;

                if (group != null)
                    Party.DisbandParty(group);
            }

            Party.RemovePartyMember(client.Aisling);
            client.ClientRefreshed();
        }
    }

    /// <summary>
    /// Swapping Sprites within UI (Skills, Spells, Items)
    /// </summary>
    protected override void Format30Handler(WorldClient client, ClientFormat30 format)
    {
        if (client?.Aisling == null) return;
        if (client is not { Authenticated: true }) return;
        if (!client.Aisling.LoggedIn) return;
        if (client.IsRefreshing) return;
        CancelIfCasting(client);
        if (client.Aisling.IsDead()) return;

        if (!client.Aisling.CanMove || !client.Aisling.CanAttack || !client.Aisling.CanCast || client.Aisling.IsCastingSpell)
        {
            client.Interrupt();
            return;
        }

        if (client.Aisling.Skulled)
        {
            client.SystemMessage(ServerSetup.Instance.Config.ReapMessageDuringAction);
            client.Interrupt();
            return;
        }

        // ToDo: Moving UI items, skills, spells around
        switch (format.PaneType)
        {
            case Pane.Inventory:
                {
                    if (format.MovingTo > 59) return;
                    if (format.MovingFrom > 59) return;
                    if (format.MovingTo - 1 < 0) return;
                    if (format.MovingFrom - 1 < 0) return;

                    client.Send(new ServerFormat10(format.MovingFrom));
                    client.Send(new ServerFormat10(format.MovingTo));

                    var a = client.Aisling.Inventory.Remove(format.MovingFrom);
                    var b = client.Aisling.Inventory.Remove(format.MovingTo);

                    if (a != null)
                    {
                        a.InventorySlot = format.MovingTo;
                        client.Aisling.Inventory.Set(a);
                        client.Aisling.Inventory.UpdateSlot(client, a);
                    }

                    if (b != null)
                    {
                        b.InventorySlot = format.MovingFrom;
                        client.Aisling.Inventory.Set(b);
                        client.Aisling.Inventory.UpdateSlot(client, b);
                    }
                }
                break;
            case Pane.Skills:
                {
                    if (format.MovingTo - 1 < 0) return;
                    if (format.MovingFrom - 1 < 0) return;

                    if (format.MovingTo == 35)
                    {
                        var skillSlot = client.Aisling.SkillBook.FindEmpty(36);
                        format.MovingTo = (byte)skillSlot;
                    }

                    if (format.MovingTo == 71)
                    {
                        var skillSlot = client.Aisling.SkillBook.FindEmpty();
                        format.MovingTo = (byte)skillSlot;
                    }

                    client.Send(new ServerFormat2D(format.MovingFrom));
                    client.Send(new ServerFormat2D(format.MovingTo));

                    var a = client.Aisling.SkillBook.Remove(format.MovingFrom);
                    var b = client.Aisling.SkillBook.Remove(format.MovingTo);

                    if (a != null)
                    {
                        a.Slot = format.MovingTo;
                        client.Send(new ServerFormat2C(a.Slot, a.Icon, a.Name));
                        client.Aisling.SkillBook.Set(a);
                    }

                    if (b != null)
                    {
                        b.Slot = format.MovingFrom;
                        client.Send(new ServerFormat2C(b.Slot, b.Icon, b.Name));
                        client.Aisling.SkillBook.Set(b);
                    }
                }
                break;
            case Pane.Spells:
                {
                    if (format.MovingTo - 1 < 0) return;
                    if (format.MovingFrom - 1 < 0) return;

                    if (format.MovingTo == 35)
                    {
                        var spellSlot = client.Aisling.SpellBook.FindEmpty(36);
                        format.MovingTo = (byte)spellSlot;
                    }

                    if (format.MovingTo == 71)
                    {
                        var spellSlot = client.Aisling.SpellBook.FindEmpty();
                        format.MovingTo = (byte)spellSlot;
                    }

                    client.Send(new ServerFormat18(format.MovingFrom));
                    client.Send(new ServerFormat18(format.MovingTo));

                    var a = client.Aisling.SpellBook.Remove(format.MovingFrom);
                    var b = client.Aisling.SpellBook.Remove(format.MovingTo);

                    if (a != null)
                    {
                        a.Slot = format.MovingTo;
                        client.Send(new ServerFormat17(a));
                        client.Aisling.SpellBook.Set(a);
                    }

                    if (b != null)
                    {
                        b.Slot = format.MovingFrom;
                        client.Send(new ServerFormat17(b));
                        client.Aisling.SpellBook.Set(b);
                    }
                }
                break;
            case Pane.Tools:
                {
                    if (format.MovingTo - 1 < 0) return;
                    if (format.MovingFrom - 1 < 0) return;

                    client.Send(new ServerFormat18(format.MovingFrom));
                    client.Send(new ServerFormat18(format.MovingTo));

                    var a = client.Aisling.SpellBook.Remove(format.MovingFrom);
                    var b = client.Aisling.SpellBook.Remove(format.MovingTo);

                    if (a != null)
                    {
                        a.Slot = format.MovingTo;
                        client.Send(new ServerFormat17(a));
                        client.Aisling.SpellBook.Set(a);
                    }

                    if (b != null)
                    {
                        b.Slot = format.MovingFrom;
                        client.Send(new ServerFormat17(b));
                        client.Aisling.SpellBook.Set(b);
                    }
                }
                break;
        }
    }

    protected override void Format32Handler(WorldClient client, ClientFormat32 format)
    {
        Console.Write($"Format32HandlerDiscovery: {format.UnknownA}\n{format.UnknownB}\n{format.UnknownC}\n{format.UnknownD}\n");
    }

    /// <summary>
    /// On Client Refresh - F5 Button
    /// </summary>
    protected override void Format38Handler(WorldClient client, ClientFormat38 format)
    {
        if (client?.Aisling == null) return;
        if (client is not { Authenticated: true }) return;
        if (!client.Aisling.LoggedIn) return;
        if (client.IsRefreshing) return;

        client.ClientRefreshed();
    }

    /// <summary>
    /// Request Pursuit
    /// </summary>
    protected override void Format39Handler(WorldClient client, ClientFormat39 format)
    {
        if (!CanInteract(client)) return;
        ServerSetup.Instance.GlobalMundaneCache.TryGetValue(format.Serial, out var npc);
        if (npc == null) return;
        if (client.EntryCheck != npc.Serial)
        {
            client.CloseDialog();
            return;
        }

        var script = npc.Scripts.FirstOrDefault();
        script.Value.OnResponse(client, format.Step, format.Args);
    }

    // ToDo: Investigate Mundane Lag & Non-Responsiveness
    /// <summary>
    /// NPC Input Response -- Story Building, Send 3A after OnResponse
    /// </summary>
    protected override void Format3AHandler(WorldClient client, ClientFormat3A format)
    {
        if (!CanInteract(client)) return;

        if (format.Step == 0 && format.ScriptId == ushort.MaxValue)
        {
            client.CloseDialog();
            return;
        }

        var objId = format.Serial;

        if (objId is > 0 and < int.MaxValue)
        {
            ServerSetup.Instance.GlobalMundaneCache.TryGetValue((int)format.Serial, out var npc);
            if (npc == null) return;
            if (client.EntryCheck != npc.Serial)
            {
                client.CloseDialog();
                return;
            }

            var script = npc.Scripts.FirstOrDefault();
            script.Value.OnResponse(client, format.Step, format.Input);
            //return;
        }

        //if (format.ScriptId == ushort.MaxValue)
        //{
        //    if (client.Aisling.ActiveReactor?.Decorators == null)
        //        return;

        //    switch (format.Step)
        //    {
        //        case 0:
        //            foreach (var script in client.Aisling.ActiveReactor.Decorators.Values)
        //                script.OnClose(client.Aisling);
        //            break;

        //        case 255:
        //            foreach (var script in client.Aisling.ActiveReactor.Decorators.Values)
        //                script.OnBack(client.Aisling);
        //            break;

        //        case 0xFFFF:
        //            foreach (var script in client.Aisling.ActiveReactor.Decorators.Values)
        //                script.OnBack(client.Aisling);
        //            break;

        //        case 2:
        //            foreach (var script in client.Aisling.ActiveReactor.Decorators.Values)
        //                script.OnClose(client.Aisling);
        //            break;

        //        case 1:
        //            foreach (var script in client.Aisling.ActiveReactor.Decorators.Values)
        //                script.OnNext(client.Aisling);
        //            break;
        //    }
        //}
        //else
        //{
        //    client.DlgSession?.Callback?.Invoke(client, format.Step, format.Input ?? string.Empty);
        //}
    }

    /// <summary>
    /// Request Bulletin Board
    /// </summary>
    protected override void Format3BHandler(WorldClient client, ClientFormat3B format)
    {
        if (!CanInteract(client, false, true, false)) return;

        if (format.Type == 0x01)
        {
            client.Send(new BoardList(ServerSetup.PersonalBoards));
            return;
        }

        if (format.Type == 0x02)
        {
            if (format.BoardIndex == 0)
            {
                var clone = ObjectHandlers.PersonalMailJsonConvert<Board>(ServerSetup.PersonalBoards[format.BoardIndex]);
                {
                    clone.Client = client;
                    client.Send(clone);
                }
                return;
            }

            var boards = ServerSetup.Instance.GlobalBoardCache.Select(i => i.Value)
                .SelectMany(i => i.Where(n => n.Index == format.BoardIndex))
                .FirstOrDefault();

            if (boards != null)
                client.Send(boards);

            return;
        }

        if (format.Type == 0x03)
        {
            var index = format.TopicIndex - 1;

            var boards = ServerSetup.Instance.GlobalBoardCache.Select(i => i.Value)
                .SelectMany(i => i.Where(n => n.Index == format.BoardIndex))
                .FirstOrDefault();

            if (boards != null &&
                boards.Posts.Count > index)
            {
                var post = boards.Posts[index];
                if (!post.Read)
                {
                    post.Read = true;
                }

                client.Send(post);
                return;
            }

            client.Send(new ForumCallback("Unable to retrieve more.", 0x06, true));
            return;
        }

        var readyTime = DateTime.UtcNow;
        if (format.Type == 0x06)
        {
            var boards = ServerSetup.Instance.GlobalBoardCache.Select(i => i.Value)
                .SelectMany(i => i.Where(n => n.Index == format.BoardIndex))
                .FirstOrDefault();

            if (boards == null) return;
            var np = new PostFormat(format.BoardIndex, format.TopicIndex)
            {
                DatePosted = readyTime,
                Message = format.Message,
                Subject = format.Title,
                Read = false,
                Sender = client.Aisling.Username,
                Recipient = format.To,
                PostId = (ushort)(boards.Posts.Count + 1)
            };

            np.Associate(client.Aisling.Username);
            boards.Posts.Add(np);
            ServerSetup.SaveCommunityAssets();
            client.Send(new ForumCallback("Message Delivered.", 0x06, true));
            var recipient = ObjectHandlers.GetAislingForMailDeliveryMessage(Convert.ToString(format.To));

            if (recipient == null) return;
            recipient.Client.SendStats(StatusFlags.UnreadMail);
            recipient.aisling.Client.SendServerMessage(ServerMessageType.ActiveMessage, "{=cYou have new mail.");
            return;
        }

        if (format.Type == 0x04)
        {
            var boards = ServerSetup.Instance.GlobalBoardCache.Select(i => i.Value)
                .SelectMany(i => i.Where(n => n.Index == format.BoardIndex))
                .FirstOrDefault();

            if (boards == null) return;
            var np = new PostFormat(format.BoardIndex, format.TopicIndex)
            {
                DatePosted = readyTime,
                Message = format.Message,
                Subject = format.Title,
                Read = false,
                Sender = client.Aisling.Username,
                PostId = (ushort)(boards.Posts.Count + 1)
            };

            np.Associate(client.Aisling.Username);

            boards.Posts.Add(np);
            ServerSetup.SaveCommunityAssets();
            client.Send(new ForumCallback("Post Added.", 0x06, true));

            return;
        }

        if (format.Type == 0x05)
        {
            var community = ServerSetup.Instance.GlobalBoardCache.Select(i => i.Value)
                .SelectMany(i => i.Where(n => n.Index == format.BoardIndex))
                .FirstOrDefault();

            if (community == null || community.Posts.Count <= 0) return;
            try
            {
                if ((format.BoardIndex == 0
                        ? community.Posts[format.TopicIndex - 1].Recipient
                        : community.Posts[format.TopicIndex - 1].Sender
                    ).Equals(client.Aisling.Username, StringComparison.OrdinalIgnoreCase) || client.Aisling.GameMaster)
                {
                    client.Send(new ForumCallback("", 0x07, true));
                    client.Send(new BoardList(ServerSetup.PersonalBoards));
                    client.Send(new ForumCallback("Post Deleted.", 0x07, true));

                    community.Posts.RemoveAt(format.TopicIndex - 1);
                    ServerSetup.SaveCommunityAssets();

                    client.Send(new ForumCallback("Post Deleted.", 0x07, true));
                }
                else
                {
                    client.Send(new ForumCallback(ServerSetup.Instance.Config.CantDoThat, 0x07, true));
                }
            }
            catch (Exception ex)
            {
                ServerSetup.Logger(ex.Message, LogLevel.Error);
                ServerSetup.Logger(ex.StackTrace, LogLevel.Error);
                Crashes.TrackError(ex);
                client.Send(new ForumCallback(ServerSetup.Instance.Config.CantDoThat, 0x07, true));
            }
        }

        if (format.Type != 0x07) return;
        {
            client.Send(client.Aisling.GameMaster == false
                ? new ForumCallback("You cannot perform this action.", 0x07, true)
                : new ForumCallback("Action completed.", 0x07, true));

            if (format.BoardIndex == 0)
            {
                var clone = ObjectHandlers.PersonalMailJsonConvert<Board>(ServerSetup.PersonalBoards[format.BoardIndex]);
                {
                    clone.Client = client;
                    client.Send(clone);
                }
                return;
            }

            var boards = ServerSetup.Instance.GlobalBoardCache.Select(i => i.Value)
                .SelectMany(i => i.Where(n => n.Index == format.BoardIndex))
                .FirstOrDefault();

            if (!client.Aisling.GameMaster) return;
            if (boards == null) return;

            foreach (var ind in boards.Posts.Where(ind => ind.PostId == format.TopicIndex))
            {
                if (ind.HighLighted)
                {
                    ind.HighLighted = false;
                    client.SendMessage(0x08, $"Removed Highlight: {ind.Subject}");
                }
                else
                {
                    ind.HighLighted = true;
                    client.SendMessage(0x08, $"Highlighted: {ind.Subject}");
                }
            }

            client.Send(boards);
        }
    }

    /// <summary>
    /// Skill Use
    /// </summary>
    protected override void Format3EHandler(WorldClient client, ClientFormat3E format)
    {
        if (!CanInteract(client, false, true, false)) return;
        if (client.Aisling.IsDead()) return;

        if (!client.Aisling.CanAttack)
        {
            client.Interrupt();
            return;
        }

        var skill = client.Aisling.SkillBook.GetSkills(i => i.Slot == format.Index).FirstOrDefault();
        if (skill?.Template == null || skill.Scripts == null) return;

        if (!skill.CanUse()) return;

        skill.InUse = true;

        if (skill.ZeroLineTimer.Update(client.Server._abilityGameTimeSpan)) return;
        skill.ZeroLineTimer.Delay = client.Server._abilityGameTimeSpan + TimeSpan.FromMilliseconds(500);

        var script = skill.Scripts.Values.First();
        script?.OnUse(client.Aisling);

        skill.InUse = false;
        skill.CurrentCooldown = skill.Template.Cooldown;
    }

    /// <summary>
    /// World Map Click
    /// </summary>
    protected override void Format3FHandler(WorldClient client, ClientFormat3F format)
    {
        if (client.Aisling is not { LoggedIn: true }) return;
        if (client is not { Authenticated: true, MapOpen: true }) return;

        if (ServerSetup.Instance.GlobalWorldMapTemplateCache.TryGetValue(client.Aisling.World, out var worldMap))
        {
            client.PendingNode = worldMap?.Portals.Find(i => i.Destination.AreaID == format.Index);
        }

        TraverseWorldMap(client);
    }

    private static void TraverseWorldMap(WorldClient client)
    {
        if (!client.MapOpen) return;
        var selectedPortalNode = client.PendingNode;
        if (selectedPortalNode == null) return;
        client.MapOpen = false;

        for (var i = 0; i < 1; i++)
        {
            client.Aisling.CurrentMapId = selectedPortalNode.Destination.AreaID;
            client.Aisling.Pos = new Vector2(selectedPortalNode.Destination.Location.X, selectedPortalNode.Destination.Location.Y);
            client.Aisling.X = selectedPortalNode.Destination.Location.X;
            client.Aisling.Y = selectedPortalNode.Destination.Location.Y;
            client.TransitionToMap(selectedPortalNode.Destination.AreaID, selectedPortalNode.Destination.Location);
        }

        client.PendingNode = null;
    }

    /// <summary>
    /// On (map, player, monster, npc) Click - F1 Button
    /// </summary>
    protected override void Format43Handler(WorldClient client, ClientFormat43 format)
    {
        if (!CanInteract(client, false, true, false)) return;

        client.Aisling.Map.Script.Item2.OnMapClick(client, format.X, format.Y);

        if (format.Serial == ServerSetup.Instance.Config.HelperMenuId &&
            ServerSetup.Instance.GlobalMundaneTemplateCache.TryGetValue(ServerSetup.Instance.Config
                .HelperMenuTemplateKey, out var value))
        {
            if (!client.Aisling.CanCast || !client.Aisling.CanAttack) return;

            if (format.Type != 0x01) return;

            var helper = new UserHelper(this, new Mundane
            {
                Serial = ServerSetup.Instance.Config.HelperMenuId,
                Template = value
            });

            helper.OnClick(client, format.Serial);
            return;
        }

        if (format.Type != 1) return;
        {
            var isMonster = false;
            var isNpc = false;
            var monsterCheck = ServerSetup.Instance.GlobalMonsterCache.Where(i => i.Key == format.Serial);
            var npcCheck = ServerSetup.Instance.GlobalMundaneCache.Where(i => i.Key == format.Serial);

            foreach (var (_, monster) in monsterCheck)
            {
                if (monster?.Template?.ScriptName == null) continue;
                var scripts = monster.Scripts?.Values;
                if (scripts != null)
                    foreach (var script in scripts)
                        script.OnClick(client);
                isMonster = true;
            }

            if (isMonster) return;

            foreach (var (_, npc) in npcCheck)
            {
                if (npc?.Template?.ScriptKey == null) continue;
                var scripts = npc.Scripts?.Values;
                if (scripts != null)
                    foreach (var script in scripts)
                        script.OnClick(client, format.Serial);
                isNpc = true;
            }

            if (isNpc) return;

            var obj = ObjectHandlers.GetObject(client.Aisling.Map, i => i.Serial == format.Serial, ObjectManager.Get.Aislings);
            switch (obj)
            {
                case null:
                    return;
                case Aisling aisling:
                    client.Aisling.Show(Scope.Self, new ServerFormat34(aisling));
                    break;
            }
        }
    }

    /// <summary>
    /// Remove Equipment From Slot
    /// </summary>
    protected override void Format44Handler(WorldClient client, ClientFormat44 format)
    {
        if (!CanInteract(client, false)) return;
        if (!client.Aisling.LoggedIn) return;
        if (client.Aisling.Dead) return;
        if (client.Aisling.EquipmentManager.Equipment.ContainsKey(format.Slot))
            client.Aisling.EquipmentManager?.RemoveFromExisting(format.Slot);
    }

    /// <summary>
    /// Client Ping - Heartbeat
    /// </summary>
    protected override void Format45Handler(WorldClient client, ClientFormat45 format)
    {
        if (client is not { Authenticated: true }) return;
        if (format.Second != 0x14)
        {
            client.SendMessage(0x02, "Issue with your network, please reconnect.");
            Analytics.TrackEvent($"{client.Aisling.Username} sent ping {format.Second} and was removed.");
            ExitGame(client);
            return;
        }

        CurrentEncryptKey = format.First;
        client.LastPingResponse = format.Ping;
    }

    /// <summary>
    /// Stat Increase Buttons
    /// </summary>
    protected override void Format47Handler(WorldClient client, ClientFormat47 format)
    {
        if (!CanInteract(client)) return;
        if (!client.Aisling.LoggedIn) return;
        if (client.IsRefreshing) return;

        var attribute = (Stat)format.Stat;

        if (client.Aisling.StatPoints == 0)
        {
            client.SendMessage(0x02, "You do not have any stat points left to use.");
            return;
        }

        if ((attribute & Stat.Str) == Stat.Str)
        {
            if (client.Aisling._Str >= 255)
            {
                client.SendMessage(0x02, "You've maxed this attribute.");
                return;
            }
            client.Aisling._Str++;
            client.SendMessage(0x02, $"{ServerSetup.Instance.Config.StrAddedMessage}");
        }

        if ((attribute & Stat.Int) == Stat.Int)
        {
            if (client.Aisling._Int >= 255)
            {
                client.SendMessage(0x02, "You've maxed this attribute.");
                return;
            }
            client.Aisling._Int++;
            client.SendMessage(0x02, $"{ServerSetup.Instance.Config.IntAddedMessage}");
        }

        if ((attribute & Stat.Wis) == Stat.Wis)
        {
            if (client.Aisling._Wis >= 255)
            {
                client.SendMessage(0x02, "You've maxed this attribute.");
                return;
            }
            client.Aisling._Wis++;
            client.SendMessage(0x02, $"{ServerSetup.Instance.Config.WisAddedMessage}");
        }

        if ((attribute & Stat.Con) == Stat.Con)
        {
            if (client.Aisling._Con >= 255)
            {
                client.SendMessage(0x02, "You've maxed this attribute.");
                return;
            }
            client.Aisling._Con++;
            client.SendMessage(0x02, $"{ServerSetup.Instance.Config.ConAddedMessage}");
        }

        if ((attribute & Stat.Dex) == Stat.Dex)
        {
            if (client.Aisling._Dex >= 255)
            {
                client.SendMessage(0x02, "You've maxed this attribute.");
                return;
            }
            client.Aisling._Dex++;
            client.SendMessage(0x02, $"{ServerSetup.Instance.Config.DexAddedMessage}");
        }

        if (client.Aisling._Wis > ServerSetup.Instance.Config.StatCap)
            client.Aisling._Wis = ServerSetup.Instance.Config.StatCap;
        if (client.Aisling._Str > ServerSetup.Instance.Config.StatCap)
            client.Aisling._Str = ServerSetup.Instance.Config.StatCap;
        if (client.Aisling._Int > ServerSetup.Instance.Config.StatCap)
            client.Aisling._Int = ServerSetup.Instance.Config.StatCap;
        if (client.Aisling._Con > ServerSetup.Instance.Config.StatCap)
            client.Aisling._Con = ServerSetup.Instance.Config.StatCap;
        if (client.Aisling._Dex > ServerSetup.Instance.Config.StatCap)
            client.Aisling._Dex = ServerSetup.Instance.Config.StatCap;

        if (client.Aisling._Wis <= 0)
            client.Aisling._Wis = 0;
        if (client.Aisling._Str <= 0)
            client.Aisling._Str = 0;
        if (client.Aisling._Int <= 0)
            client.Aisling._Int = 0;
        if (client.Aisling._Con <= 0)
            client.Aisling._Con = 0;
        if (client.Aisling._Dex <= 0)
            client.Aisling._Dex = 0;

        if (!client.Aisling.GameMaster)
            client.Aisling.StatPoints--;

        if (client.Aisling.StatPoints < 0)
            client.Aisling.StatPoints = 0;

        client.Aisling.Show(Scope.Self, new ServerFormat08(client.Aisling, StatusFlags.StructA));
    }

    /// <summary>
    /// Client Trading
    /// </summary>
    protected override void Format4AHandler(WorldClient client, ClientFormat4A format)
    {
        if (format == null) return;
        if (!CanInteract(client, false, true, false)) return;

        var trader = ObjectHandlers.GetObject<Aisling>(client.Aisling.Map, i => i.Serial.Equals((int)format.Id));
        var player = client.Aisling;

        if (player == null || trader == null) return;
        if (!player.WithinRangeOf(trader)) return;

        switch (format.Type)
        {
            case 0x00:
                {
                    if (player.ThrewHealingPot) break;

                    player.Exchange = new ExchangeSession(trader);
                    trader.Exchange = new ExchangeSession(player);

                    var packet = new NetworkPacketWriter();
                    packet.Write((byte)0x42);
                    packet.Write((byte)0x00);
                    packet.Write((byte)0x00);
                    packet.Write((uint)trader.Serial);
                    packet.WriteStringA(trader.Username);
                    client.Send(packet);

                    packet = new NetworkPacketWriter();
                    packet.Write((byte)0x42);
                    packet.Write((byte)0x00);
                    packet.Write((byte)0x00);
                    packet.Write((uint)player.Serial);
                    packet.WriteStringA(player.Username);
                    trader.Client.Send(packet);
                }
                break;
            case 0x01:
                {
                    if (player.ThrewHealingPot)
                    {
                        player.ThrewHealingPot = false;
                        break;
                    }

                    var item = client.Aisling.Inventory.Items[format.ItemSlot];

                    if (!item.Template.Flags.FlagIsSet(ItemFlags.Tradeable))
                    {
                        player.aisling.Client.SendServerMessage(ServerMessageType.ActiveMessage, "That item is not tradeable");
                        return;
                    }

                    if (player.Exchange == null) return;
                    if (trader.Exchange == null) return;
                    if (player.Exchange.Trader != trader) return;
                    if (trader.Exchange.Trader != player) return;
                    if (player.Exchange.Confirmed) return;
                    if (item?.Template == null) return;

                    if (trader.CurrentWeight + item.Template.CarryWeight < trader.MaximumWeight)
                    {
                        if (player.EquipmentManager.RemoveFromInventory(item, true))
                        {
                            player.Exchange.Items.Add(item);
                            player.Exchange.Weight += item.Template.CarryWeight;
                        }

                        var packet = new NetworkPacketWriter();
                        packet.Write((byte)0x42);
                        packet.Write((byte)0x00);

                        packet.Write((byte)0x02);
                        packet.Write((byte)0x00);
                        packet.Write((byte)player.Exchange.Items.Count);
                        packet.Write(item.DisplayImage);
                        packet.Write(item.Color);
                        packet.WriteStringA(item.NoColorDisplayName);
                        client.Send(packet);

                        packet = new NetworkPacketWriter();
                        packet.Write((byte)0x42);
                        packet.Write((byte)0x00);

                        packet.Write((byte)0x02);
                        packet.Write((byte)0x01);
                        packet.Write((byte)player.Exchange.Items.Count);
                        packet.Write(item.DisplayImage);
                        packet.Write(item.Color);
                        packet.WriteStringA(item.NoColorDisplayName);
                        trader.Client.Send(packet);
                    }
                    else
                    {
                        var packet = new NetworkPacketWriter();
                        packet.Write((byte)0x42);
                        packet.Write((byte)0x00);

                        packet.Write((byte)0x04);
                        packet.Write((byte)0x00);
                        packet.WriteStringA("They can't seem to lift that. The trade has been cancelled.");
                        client.Send(packet);

                        packet = new NetworkPacketWriter();
                        packet.Write((byte)0x42);
                        packet.Write((byte)0x00);

                        packet.Write((byte)0x04);
                        packet.Write((byte)0x01);
                        packet.WriteStringA("That item seems to be too heavy. The trade has been cancelled.");
                        trader.Client.Send(packet);
                        player.CancelExchange();
                    }
                }
                break;
            case 0x02:
                break;
            case 0x03:
                {
                    if (player.Exchange == null) return;
                    if (trader.Exchange == null) return;
                    if (player.Exchange.Trader != trader) return;
                    if (trader.Exchange.Trader != player) return;
                    if (player.Exchange.Confirmed) return;
                    if (player.Exchange.Gold != 0) return;

                    var gold = format.Gold;

                    if (gold > player.GoldPoints)
                    {
                        player.aisling.Client.SendServerMessage(ServerMessageType.ActiveMessage, "You don't have that much.");
                        return;
                    }

                    if (trader.GoldPoints + gold > ServerSetup.Instance.Config.MaxCarryGold)
                    {
                        player.aisling.Client.SendServerMessage(ServerMessageType.ActiveMessage, "Player cannot hold that amount.");
                        return;
                    }

                    player.GoldPoints -= gold;
                    player.Exchange.Gold = gold;
                    player.Client.SendStats(StatusFlags.StructC);

                    var packet = new NetworkPacketWriter();
                    packet.Write((byte)0x42);
                    packet.Write((byte)0x00);

                    packet.Write((byte)0x03);
                    packet.Write((byte)0x00);
                    packet.Write(gold);
                    client.Send(packet);

                    packet = new NetworkPacketWriter();
                    packet.Write((byte)0x42);
                    packet.Write((byte)0x00);

                    packet.Write((byte)0x03);
                    packet.Write((byte)0x01);
                    packet.Write(gold);
                    trader.Client.Send(packet);
                }
                break;
            case 0x04:
                {
                    if (player.Exchange == null) return;
                    if (trader.Exchange == null) return;
                    if (player.Exchange.Trader != trader) return;
                    if (trader.Exchange.Trader != player) return;

                    player.CancelExchange();
                }
                break;

            case 0x05:
                {
                    if (player.Exchange == null) return;
                    if (trader.Exchange == null) return;
                    if (player.Exchange.Trader != trader) return;
                    if (trader.Exchange.Trader != player) return;
                    if (player.Exchange.Confirmed) return;

                    player.Exchange.Confirmed = true;

                    if (trader.Exchange.Confirmed)
                        player.FinishExchange();

                    var packet = new NetworkPacketWriter();
                    packet.Write((byte)0x42);
                    packet.Write((byte)0x00);

                    packet.Write((byte)0x05);
                    packet.Write((byte)0x00);
                    packet.WriteStringA("Trade was completed.");
                    client.Send(packet);

                    packet = new NetworkPacketWriter();
                    packet.Write((byte)0x42);
                    packet.Write((byte)0x00);

                    packet.Write((byte)0x05);
                    packet.Write((byte)0x01);
                    packet.WriteStringA("Trade was completed.");
                    trader.Client.Send(packet);
                }
                break;
        }
    }

    /// <summary>
    /// Begin Casting - Spell Lines
    /// </summary>
    protected override void Format4DHandler(WorldClient client, ClientFormat4D format)
    {
        if (!CanInteract(client, false, false, false)) return;
        if (!client.Aisling.LoggedIn) return;
        if (client.Aisling.IsDead()) return;

        client.Aisling.IsCastingSpell = true;

        var lines = format.Lines;

        if (lines <= 0)
        {
            CancelIfCasting(client);
            return;
        }

        if (!client.CastStack.Any()) return;
        var info = client.CastStack.Peek();

        if (info == null) return;
        info.SpellLines = lines;
        info.Started = DateTime.UtcNow;
    }

    /// <summary>
    /// Skill / Spell Lines - Chant Message
    /// </summary>
    protected override void Format4EHandler(WorldClient client, ClientFormat4E format)
    {
        if (client?.Aisling == null) return;
        if (client is not { Authenticated: true }) return;
        if (!client.Aisling.LoggedIn) return;
        if (client.Aisling.IsDead()) return;

        var chant = format.Message;
        var subject = chant.IndexOf(" Lev", StringComparison.Ordinal);

        if (subject > 0)
        {
            if (chant.Length <= subject) return;

            if (chant.Length > subject)
            {
                client.Say(chant.Trim());
            }

            return;
        }

        client.Say(chant, 0x02);
    }

    /// <summary>
    /// Player Portrait & Profile Message
    /// </summary>
    protected override void Format4FHandler(WorldClient client, ClientFormat4F format)
    {
        if (!CanInteract(client, false, false, false)) return;
        client.Aisling.ProfileMessage = format.Words;
        client.Aisling.PictureData = format.Image;
    }

    /// <summary>
    /// Client Tick Sync
    /// </summary>
    protected override void Format75Handler(WorldClient client, ClientFormat75 format)
    {
        Console.Write($"Format75HandlerDiscovery: {format.ClientTick} - {format.ServerTick}\n");
    }

    /// <summary>
    /// Player Social Status
    /// </summary>
    protected override void Format79Handler(WorldClient client, ClientFormat79 format)
    {
        if (client is not { Authenticated: true }) return;
        client.Aisling.ActiveStatus = format.Status;
    }

    /// <summary>
    /// Client Metafile Request
    /// </summary>
    protected override void Format7BHandler(WorldClient client, ClientFormat7B format)
    {
        if (client is not { Authenticated: true }) return;

        switch (format.Type)
        {
            case 0x00:
                {
                    if (!format.Name.Contains("Class"))
                    {
                        client.Send(new ServerFormat6F
                        {
                            Type = 0x00,
                            Name = format.Name
                        });
                        break;
                    }

                    var name = DecideOnSkillsToPull(client);

                    client.Send(new ServerFormat6F
                    {
                        Client = client,
                        Type = 0x00,
                        Name = name
                    });
                }
                break;
            case 0x01:
                client.Send(new ServerFormat6F
                {
                    Type = 0x01
                });
                break;
        }
    }

    private static string DecideOnSkillsToPull(IWorldClient client)
    {
        if (client.Aisling == null) return null;
        return _skillMap.TryGetValue((client.Aisling.Race, client.Aisling.Path, client.Aisling.PastClass), out var skillCode) ? skillCode : null;
    }

    /// <summary>
    /// Display Mask
    /// </summary>
    protected override void Format89Handler(WorldClient client, ClientFormat89 format)
    {
        Console.Write($"Format89HandlerDiscovery\n");
    }

    #endregion
    

    public static void CheckWarpTransitions(WorldClient client)
    {
        foreach (var (_, value) in ServerSetup.Instance.GlobalWarpTemplateCache)
        {
            var breakOuterLoop = false;
            if (value.ActivationMapId != client.Aisling.CurrentMapId) continue;

            lock (ServerSetup.SyncLock)
            {
                foreach (var _ in value.Activations.Where(o =>
                             o.Location.X == (int)client.Aisling.Pos.X &&
                             o.Location.Y == (int)client.Aisling.Pos.Y))
                {
                    if (value.WarpType == WarpType.Map)
                    {
                        client.WarpToAdjacentMap(value);
                        breakOuterLoop = true;
                        break;
                    }

                    if (value.WarpType != WarpType.World) continue;
                    if (!ServerSetup.Instance.GlobalWorldMapTemplateCache.ContainsKey(value.To.PortalKey)) return;
                    if (client.Aisling.World != value.To.PortalKey) client.Aisling.World = value.To.PortalKey;

                    var portal = new PortalSession();
                    portal.TransitionToMap(client);
                    breakOuterLoop = true;
                    break;
                }
            }

            if (breakOuterLoop) break;
        }
    }

    public static void CheckWarpTransitions(WorldClient client, int x, int y)
    {
        foreach (var (_, value) in ServerSetup.Instance.GlobalWarpTemplateCache)
        {
            var breakOuterLoop = false;
            if (value.ActivationMapId != client.Aisling.CurrentMapId) continue;

            lock (ServerSetup.SyncLock)
            {
                foreach (var _ in value.Activations.Where(o =>
                             o.Location.X == x &&
                             o.Location.Y == y))
                {
                    if (value.WarpType == WarpType.Map)
                    {
                        client.WarpToAdjacentMap(value);
                        breakOuterLoop = true;
                        client.Interrupt();
                        break;
                    }

                    if (value.WarpType != WarpType.World) continue;
                    if (!ServerSetup.Instance.GlobalWorldMapTemplateCache.ContainsKey(value.To.PortalKey)) return;
                    if (client.Aisling.World != value.To.PortalKey) client.Aisling.World = value.To.PortalKey;

                    var portal = new PortalSession();
                    portal.TransitionToMap(client);
                    breakOuterLoop = true;
                    client.Interrupt();
                    break;
                }
            }

            if (breakOuterLoop) break;
        }
    }

    private void RemoveFromServer(WorldClient client, byte type = 0)
    {
        if (client == null) return;

        try
        {
            if (client.Server == null) return;
            if (client.Server.Clients.IsEmpty) return;
            if (client.Server.Clients.Values.Count == 0) return;
            if (!client.Server.Clients.Values.Contains(client)) return;

            if (type == 0)
            {
                ExitGame(client);
                return;
            }

            client.CloseDialog();
            if (client.Aisling == null) return;
            client.Aisling.CancelExchange();

            client.DlgSession = null;
            client.Aisling.LastLogged = DateTime.UtcNow;
            client.Aisling.ActiveReactor = null;
            client.Aisling.ActiveSequence = null;
            client.Aisling.Remove(true);
            client.Aisling.LoggedIn = false;
        }
        catch (Exception e)
        {
            ServerSetup.Logger(e.Message, LogLevel.Error);
            ServerSetup.Logger(e.StackTrace, LogLevel.Error);
        }
    }

    private async void ExitGame(WorldClient client)
    {
        if (client.Aisling is null) return;
        var nameSeed = $"{client.Aisling.Username.ToLower()}{client.Aisling.Serial}";
        var redirect = new Redirect
        {
            Serial = Convert.ToString(client.Serial, CultureInfo.CurrentCulture),
            Salt = Encoding.UTF8.GetString(SecurityProvider.Instance.Salt),
            Seed = Convert.ToString(SecurityProvider.Instance.Seed, CultureInfo.CurrentCulture),
            Name = nameSeed,
            Type = "2"
        };

        client.Aisling.LoggedIn = false;
        await client.Save();

        if (ServerSetup.Redirects.ContainsKey(client.Aisling.Serial))
            ServerSetup.Redirects.TryRemove(client.Aisling.Serial, out _);

        client.Send(new ServerFormat03
        {
            CalledFromMethod = true,
            EndPoint = new IPEndPoint(Address, 2610),
            Redirect = redirect
        });

        client.Send(new ServerFormat02(0x00, ""));
        RemoveClient(client);
        ServerSetup.Logger($"{client.Aisling.Username} either logged out or was removed from the server.");
        client.Dispose();
    }

    public override void ClientDisconnected(WorldClient client)
    {
        if (client == null) return;
        if (client.Aisling?.GroupId != 0)
            Party.RemovePartyMember(client.Aisling);
        RemoveFromServer(client, 1);
        RemoveFromServer(client);
    }
    
    /// <summary>
    /// Reduces code redundancy by combining many Interaction checks into a method with boolean handlers
    /// </summary>
    /// <param name="cancelCasting">Set to false to allow casting</param>
    /// <param name="deathCheck">Set to false if not checking if the player is dead</param>
    /// <param name="cantCastOrAttack">Set to false if not checking attacking/casting</param>
    /// <returns></returns>
    private static bool CanInteract(WorldClient client, bool cancelCasting = true, bool deathCheck = true, bool cantCastOrAttack = true)
    {
        if (client?.Aisling == null) return false;
        if (client is not ({ Authenticated: true } and { EncryptPass: true })) return false;

        if (cancelCasting)
            CancelIfCasting(client);

        if (deathCheck)
            if (client.Aisling.Skulled)
            {
                client.SystemMessage(ServerSetup.Instance.Config.ReapMessageDuringAction);
                client.Interrupt();
                return false;
            }

        if (!cantCastOrAttack) return true;
        if (client.Aisling.CanCast && client.Aisling.CanAttack) return true;
        client.Interrupt();
        return false;
    }
}