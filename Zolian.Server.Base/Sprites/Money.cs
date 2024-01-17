﻿using Chaos.Common.Definitions;
using Chaos.Common.Identity;

using Darkages.Enums;
using Darkages.Types;

using System.Numerics;

namespace Darkages.Sprites;

public sealed class Money : Sprite
{
    public uint Amount { get; private set; }
    public ushort Image { get; private set; }
    private MoneySprites Type { get; set; }

    private Money()
    {
        TileType = TileContent.Money;
    }

    public static void Create(Sprite parent, uint amount, Position location)
    {
        if (parent == null) return;

        var money = new Money();
        money.CalcAmount(amount);
        money.Serial = EphemeralRandomIdGenerator<uint>.Shared.NextId;
        var readyTime = DateTime.UtcNow;
        money.AbandonedDate = readyTime;
        money.CurrentMapId = parent.CurrentMapId;
        money.Pos = new Vector2(location.X, location.Y);
        var mt = (int)money.Type;

        if (mt > 0) money.Image = (ushort)mt;

        parent.AddObject(money);
    }

    public void GiveTo(uint amount, Aisling aisling)
    {
        if (aisling.GoldPoints + amount > ServerSetup.Instance.Config.MaxCarryGold)
        {
            aisling.Client.SendServerMessage(ServerMessageType.ActiveMessage, "Can't quite hold that much.");
            return;
        }

        aisling.GoldPoints += amount;

        if (aisling.GoldPoints > ServerSetup.Instance.Config.MaxCarryGold)
            aisling.GoldPoints = int.MaxValue;

        aisling.Client.SendServerMessage(ServerMessageType.ActiveMessage, $"You've received {amount} coins.");
        aisling.Client.SendAttributes(StatUpdateType.ExpGold);

        Remove();
    }

    private void CalcAmount(uint amount)
    {
        Amount = amount;

        Type = Amount switch
        {
            > 0 and < 10 => MoneySprites.CopperCoin,
            >= 10 and < 100 => MoneySprites.CopperPile,
            >= 100 and < 500 => MoneySprites.SilverCoin,
            >= 500 and < 1000 => MoneySprites.SilverPile,
            >= 1000 and < 50000 => MoneySprites.GoldCoin,
            >= 50000 and < 1000000 => MoneySprites.GoldPile,
            >= 1000000 => MoneySprites.MassGoldPile,
            _ => Type
        };
    }
}