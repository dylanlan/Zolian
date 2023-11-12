﻿using Darkages.Enums;
using Darkages.ScriptingBase;
using Darkages.Sprites;

namespace Darkages.GameScripts.Items;

[Script("FirstAcc")]
public class FirstAcc(Item item) : ItemScript(item)
{
    public override void OnUse(Sprite sprite, byte slot)
    {
        if (sprite == null) return;
        if (Item?.Template == null) return;
        if (sprite is not Aisling aisling) return;
        var client = aisling.Client;
        if (!Item.Template.Flags.FlagIsSet(ItemFlags.Equipable)) return;

        if (client.CheckReqs(client, Item))
            client.Aisling.EquipmentManager.Add(Item.Template.EquipmentSlot, Item);
    }

    public override void Equipped(Sprite sprite, byte slot)
    {
        if (sprite == null) return;
        if (Item?.Template == null) return;
        if (sprite is not Aisling aisling) return;
        var client = aisling.Client;
        if (!Item.Template.Flags.FlagIsSet(ItemFlags.Equipable)) return;

        client.Aisling.Accessory1Img = (short)Item.Image;
        client.Aisling.Accessory1Color = Item.Color;

        if (!Item.Template.Flags.FlagIsSet(ItemFlags.Elemental)) return;
        aisling.SecondaryOffensiveElement = Item.Template.SecondaryOffensiveElement;
        aisling.SecondaryDefensiveElement = Item.Template.SecondaryDefensiveElement;
    }

    public override void UnEquipped(Sprite sprite, byte slot)
    {
        if (sprite == null) return;
        if (Item?.Template == null) return;
        if (sprite is not Aisling aisling) return;
        var client = aisling.Client;
        if (!Item.Template.Flags.FlagIsSet(ItemFlags.Equipable)) return;

        client.Aisling.Accessory1Img = 0;
        client.Aisling.Accessory1Color = 0;

        if (!Item.Template.Flags.FlagIsSet(ItemFlags.Elemental)) return;
        aisling.SecondaryOffensiveElement = ElementManager.Element.None;
        aisling.SecondaryDefensiveElement = ElementManager.Element.None;
    }
}