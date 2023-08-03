﻿using Chaos.Common.Definitions;

using Darkages.Common;
using Darkages.Enums;
using Darkages.Models;
using Darkages.Network.Client;
using Darkages.Network.Server;
using Darkages.Scripting;
using Darkages.Sprites;
using Darkages.Types;

namespace Darkages.GameScripts.Mundanes.Generic;

[Script("Banker")]
public class Banker : MundaneScript
{
    private readonly Bank _bankTeller = new();

    public Banker(WorldServer server, Mundane mundane) : base(server, mundane) { }

    public override void OnClick(WorldClient client, uint serial)
    {
        base.OnClick(client, serial);
        TopMenu(client);
    }

    protected override void TopMenu(WorldClient client)
    {
        base.TopMenu(client);

        var options = new List<Dialog.OptionsDataItem>();

        if (client.Aisling.Inventory.TotalItems > 0)
        {
            options.Add(new Dialog.OptionsDataItem(0x03, "Deposit Item"));
        }

        if (!client.Aisling.BankManager.Items.IsEmpty)
        {
            options.Add(new Dialog.OptionsDataItem(0x02, "Withdraw Item"));
        }

        //if (client.Aisling.GoldPoints > 0)
        //{
        //    options.Add(new Dialog.OptionsDataItem(0x07, "Deposit Gold"));
        //}

        //if (client.Aisling.BankedGold > 0)
        //{
        //    options.Add(new Dialog.OptionsDataItem(0x08, "Withdraw Gold"));
        //}

        client.SendOptionsDialog(Mundane, "Don't mind the goblins, they help around here", options.ToArray());
    }

    public override void OnItemDropped(WorldClient client, Item item)
    {
        if (client == null) return;
        if (item == null) return;
        if (item.Template.Flags.FlagIsSet(ItemFlags.Bankable))
        {
            OnResponse(client, 0x500, item.InventorySlot.ToString());
        }
    }

    public override void OnGoldDropped(WorldClient client, uint money)
    {
        if (client == null) return;
        if (money <= client.Aisling.GoldPoints)
        {
            _bankTeller.DepositGold(client, money);
            client.SendPublicMessage(Mundane.Serial, PublicMessageType.Normal, $"Hail! We'll take your deposit of {money} coin(s)");
        }
        else
        {
            client.SendPublicMessage(Mundane.Serial, PublicMessageType.Normal, "I'm sorry it seems you don't have that much");
        }
    }

    public override void OnResponse(WorldClient client, ushort responseId, string args)
    {
        if (!AuthenticateUser(client)) return;

        switch (responseId)
        {
            case 0x00:
                {
                    if (string.IsNullOrEmpty(args)) return;
                    var itemOrSlot = ushort.TryParse(args, out var slot);

                    switch (itemOrSlot)
                    {
                        // Withdrawing
                        case false:
                            var bankToInv = client.Aisling.BankManager.Items.Values.FirstOrDefault(x => x.NoColorDisplayName == args);
                            if (bankToInv != null)
                            {
                                if (bankToInv.Stacks >= 1 && bankToInv.Template.CanStack)
                                {
                                    client.PendingItemSessions = new PendingSell
                                    {
                                        ID = bankToInv.ItemId,
                                        Name = bankToInv.DisplayName,
                                        Quantity = 0
                                    };

                                    client.SendTextInput(Mundane, "How many would you like back?", "Amount:", 3);
                                    break;
                                }

                                client.Aisling.BankManager.Items.TryRemove(bankToInv.ItemId, out var verifiedItem);
                                verifiedItem?.GiveTo(client.Aisling);
                                client.SendPublicMessage(Mundane.Serial, PublicMessageType.Normal, $"{client.Aisling.Username}, here is your {verifiedItem?.DisplayName ?? ""}");
                                TopMenu(client);
                            }

                            break;
                        // Depositing
                        case true when slot > 0:
                            client.Aisling.Inventory.Items.TryGetValue(slot, out var inventoryItem);
                            if (inventoryItem == null)
                            {
                                client.SendPublicMessage(Mundane.Serial, PublicMessageType.Normal, "Well? Where is it?");
                                client.CloseDialog();
                                return;
                            }

                            if (inventoryItem.Stacks >= 1 && inventoryItem.Template.CanStack)
                            {
                                client.PendingBuySessions = new PendingBuy
                                {
                                    ID = inventoryItem.ItemId,
                                    Name = inventoryItem.DisplayName,
                                    Offer = inventoryItem.InventorySlot,
                                    Quantity = 0
                                };

                                client.SendTextInput(Mundane, "How many would you like to deposit?", "Amount:", 3);
                                break;
                            }

                            if (!client.Aisling.Inventory.Items.TryUpdate(inventoryItem.InventorySlot, null, inventoryItem))
                            {
                                client.SendPublicMessage(Mundane.Serial, PublicMessageType.Normal, "Well? Where is it?");
                                client.CloseDialog();
                                return;
                            }

                            inventoryItem.ItemPane = Item.ItemPanes.Bank;
                            if (client.Aisling.BankManager.Items.TryAdd(inventoryItem.ItemId, inventoryItem))
                                client.SendRemoveItemFromPane(inventoryItem.InventorySlot);
                            client.SendPublicMessage(Mundane.Serial, PublicMessageType.Normal, $"{client.Aisling.Username}, thank you for trusting {inventoryItem.DisplayName} with us!");
                            client.SendServerMessage(ServerMessageType.ActiveMessage, $"{{=cDeposited: {{=g{inventoryItem.DisplayName}");
                            client.Aisling.Inventory.UpdatePlayersWeight(client);
                            TopMenu(client);
                            break;
                    }
                }
                break;
            case 0x01:
                var containsInt = ushort.TryParse(args, out var amount);

                if (containsInt)
                {
                    if (client.PendingBuySessions == null && client.PendingItemSessions == null)
                    {
                        var options = new List<Dialog.OptionsDataItem>();

                        if (client.Aisling.Inventory.TotalItems > 0)
                        {
                            options.Add(new Dialog.OptionsDataItem(0x03, "Deposit Item"));
                        }

                        if (!client.Aisling.BankManager.Items.IsEmpty)
                        {
                            options.Add(new Dialog.OptionsDataItem(0x02, "Withdraw Item"));
                        }

                        client.SendOptionsDialog(Mundane, "We don't seem to have that. *checks ledger*", options.ToArray());
                        return;
                    }

                    // Withdraw
                    if (client.PendingItemSessions != null)
                    {
                        client.PendingItemSessions.Quantity = amount;
                        client.Aisling.BankManager.Items.TryGetValue(client.PendingItemSessions.ID, out var itemInBank);

                        if (itemInBank == null)
                        {
                            client.SendOptionsDialog(Mundane, "We don't seem to have that. *checks ledger*");
                            return;
                        }

                        if (amount == 0)
                        {
                            client.SendPublicMessage(Mundane.Serial, PublicMessageType.Normal, $"{client.Aisling.Username}, that's not whats on the ledger");
                            client.PendingItemSessions = null;
                            client.CloseDialog();
                            return;
                        }

                        if (itemInBank.Stacks < client.PendingItemSessions.Quantity)
                        {
                            client.SendPublicMessage(Mundane.Serial, PublicMessageType.Normal, $"{client.Aisling.Username}, that's not whats on the ledger");
                            client.PendingItemSessions = null;
                            client.CloseDialog();
                            return;
                        }

                        if (itemInBank.Stacks == client.PendingItemSessions.Quantity)
                        {
                            client.Aisling.BankManager.Items.TryRemove(itemInBank.ItemId, out var verifiedItem);
                            verifiedItem?.GiveTo(client.Aisling);
                            verifiedItem?.DeleteFromAislingDb();
                            client.SendPublicMessage(Mundane.Serial, PublicMessageType.Normal, $"{client.Aisling.Username}, here is your {verifiedItem?.DisplayName ?? ""} x{verifiedItem?.Stacks}");
                            client.PendingItemSessions = null;
                            TopMenu(client);
                            return;
                        }

                        if (itemInBank.Stacks > client.PendingItemSessions.Quantity)
                        {
                            // Modify Existing
                            var tempItem = itemInBank;
                            tempItem.Stacks -= client.PendingItemSessions.Quantity;
                            client.Aisling.BankManager.Items.TryUpdate(itemInBank.ItemId, tempItem, itemInBank);

                            // Create
                            var itemCreateFromTemplate = new Item();
                            var itemCreated = itemCreateFromTemplate.Create(client.Aisling, itemInBank.Template);
                            itemCreated.Stacks = client.PendingItemSessions.Quantity;

                            // Give
                            itemCreated.GiveTo(client.Aisling);
                            client.SendPublicMessage(Mundane.Serial, PublicMessageType.Normal, $"{client.Aisling.Username}, here is your {itemCreated.DisplayName} x{itemCreated.Stacks}");
                            client.Aisling.Inventory.UpdatePlayersWeight(client);
                            client.PendingItemSessions = null;
                            TopMenu(client);
                        }
                    }

                    // Deposit
                    if (client.PendingBuySessions != null)
                    {
                        client.PendingBuySessions.Quantity = amount;
                        client.Aisling.Inventory.Items.TryGetValue(client.PendingBuySessions.Offer, out var itemInInv);

                        if (itemInInv == null)
                        {
                            client.SendPublicMessage(Mundane.Serial, PublicMessageType.Normal, "Are you sure?");
                            client.PendingBuySessions = null;
                            client.CloseDialog();
                            return;
                        }

                        if (amount == 0)
                        {
                            client.SendPublicMessage(Mundane.Serial, PublicMessageType.Normal, $"{client.Aisling.Username}, Zero? Really?");
                            client.PendingBuySessions = null;
                            client.CloseDialog();
                            return;
                        }

                        if (itemInInv.Stacks < client.PendingBuySessions.Quantity)
                        {
                            client.SendPublicMessage(Mundane.Serial, PublicMessageType.Normal, $"{client.Aisling.Username}, where are they?");
                            client.PendingBuySessions = null;
                            client.CloseDialog();
                            return;
                        }

                        if (itemInInv.Stacks == client.PendingBuySessions.Quantity)
                        {
                            if (!client.Aisling.Inventory.Items.TryUpdate(itemInInv.InventorySlot, null, itemInInv))
                            {
                                client.SendPublicMessage(Mundane.Serial, PublicMessageType.Normal, $"{client.Aisling.Username}, where is it?");
                                client.PendingBuySessions = null;
                                client.CloseDialog();
                                return;
                            }

                            itemInInv.ItemPane = Item.ItemPanes.Bank;
                            if (client.Aisling.BankManager.Items.TryAdd(itemInInv.ItemId, itemInInv))
                                client.SendRemoveItemFromPane(itemInInv.InventorySlot);

                            client.SendServerMessage(ServerMessageType.ActiveMessage, $"{{=cDeposited: {{=g{itemInInv.DisplayName}");
                            client.Aisling.Inventory.UpdatePlayersWeight(client);
                            client.PendingBuySessions = null;
                            TopMenu(client);
                            return;
                        }

                        if (itemInInv.Stacks > client.PendingBuySessions.Quantity)
                        {
                            // Modify Existing
                            client.Aisling.Inventory.RemoveRange(client, itemInInv, client.PendingBuySessions.Quantity);

                            // Create
                            var itemCreateFromTemplate = new Item();
                            var itemCreated = itemCreateFromTemplate.Create(client.Aisling, itemInInv.Template);
                            itemCreated.Stacks = client.PendingBuySessions.Quantity;
                            itemCreated.ItemPane = Item.ItemPanes.Bank;

                            // Deposit
                            client.Aisling.BankManager.Items.TryAdd(itemCreated.ItemId, itemCreated);
                            client.SendServerMessage(ServerMessageType.ActiveMessage, $"{{=cDeposited: {{=g{itemCreated.DisplayName}, x{client.PendingBuySessions.Quantity}");
                            client.Aisling.Inventory.UpdatePlayersWeight(client);
                            client.PendingBuySessions = null;
                            TopMenu(client);
                        }
                    }
                }
                else
                {
                    client.SendPublicMessage(Mundane.Serial, PublicMessageType.Normal, $"{client.Aisling.Username}, that's not whats on the ledger");
                    client.PendingBuySessions = null;
                    client.CloseDialog();
                }
                break;
            case 0x02:
                {
                    client.SendWithdrawBankDialog(Mundane, "What do you wish to withdraw? *holds ledger out*", NpcShopExtensions.WithdrawFromBank(client));
                }
                break;
            case 0x03:
                {
                    client.SendItemSellDialog(Mundane, "We deploy and guard all vaults with the strongest guards", NpcShopExtensions.GetCharacterBankInventoryByteList(client));
                }
                break;
            case 0x07:
                {

                }
                break;
            case 0x08:
                {

                }
                break;
            case 0x500: // OnItemDrop
                {
                    var containsUshort = ushort.TryParse(args, out var slot);
                    if (containsUshort)
                    {
                        var item = client.Aisling.Inventory.FindInSlot(slot);
                        if (item == null)
                        {
                            client.SendOptionsDialog(Mundane, "Well? Where is it?");
                            return;
                        }

                        if (!client.Aisling.Inventory.Items.TryUpdate(item.InventorySlot, null, item))
                        {
                            client.SendOptionsDialog(Mundane, "Well? Where is it?");
                            return;
                        }

                        item.ItemPane = Item.ItemPanes.Bank;
                        if (client.Aisling.BankManager.Items.TryAdd(item.ItemId, item))
                            client.SendRemoveItemFromPane(item.InventorySlot);

                        client.SendServerMessage(ServerMessageType.ActiveMessage, $"{{=cDeposited: {{=g{item.DisplayName}");
                        client.Aisling.Inventory.UpdatePlayersWeight(client);
                    }
                    else
                    {
                        client.SendPublicMessage(Mundane.Serial, PublicMessageType.Normal, $"{client.Aisling.Username}, hmm, you sure?");
                    }
                }
                break;
        }
    }
}