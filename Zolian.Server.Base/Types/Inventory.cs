﻿using System.Collections.Concurrent;

using Chaos.Common.Definitions;
using Chaos.Common.Identity;
using Chaos.Extensions.Common;

using Darkages.Enums;
using Darkages.Interfaces;
using Darkages.Network.Client;
using Darkages.Object;
using Darkages.Scripting;
using Darkages.Sprites;
using Darkages.Templates;

namespace Darkages.Types;

public class Inventory : ObjectManager, IInventory
{
    private const int Length = 59;
    private readonly int[] _invalidSlots = { 0, 60 };
    public bool IsFull => TotalItems >= Length;

    public readonly ConcurrentDictionary<int, Item> Items = new();

    public Inventory()
    {
        for (var i = 0; i < Length; i++) Items[i + 1] = null;
    }

    public bool IsValidSlot(byte slot) => slot is > 0 and <= Length && !_invalidSlots.Contains(slot);

    public IEnumerable<Item> BankList => Items.Values.Where(i => i is { Template: not null, ItemPane: Item.ItemPanes.Bank } && i.Template.Flags.FlagIsSet(ItemFlags.Bankable)).ToList();

    public int TotalItems => Items.Count;

    public bool CanPickup(Aisling player, Item lpItem)
    {
        if (player == null || lpItem == null) return false;
        if (lpItem.Template == null) return false;

        if (lpItem.Stacks <= 1)
            return player.CurrentWeight + lpItem.Template.CarryWeight < player.MaximumWeight &&
                   FindEmpty() != byte.MaxValue;

        var weight = lpItem.Template.CarryWeight * lpItem.Stacks;
        return player.CurrentWeight + weight < player.MaximumWeight && FindEmpty() != byte.MaxValue;
    }

    public byte FindEmpty()
    {
        byte idx = 1;

        foreach (var slot in Items)
        {
            if (slot.Value == null)
                return idx;

            idx++;
        }

        return byte.MaxValue;
    }

    public Item FindInSlot(int slot)
    {
        return Items.TryGetValue(slot, out var item) ? item : null;
    }

    public new IEnumerable<Item> Get(Predicate<Item> prediate)
    {
        return Items.Values.Where(i => i != null && prediate(i)).ToArray();
    }

    public List<Item> HasMany(Predicate<Item> predicate)
    {
        return Items.Values.Where(i => i != null && predicate(i)).ToList();
    }

    public Item Has(Predicate<Item> predicate)
    {
        return Items.Values.FirstOrDefault(i => i != null && predicate(i));
    }

    public int Has(Template templateContext)
    {
        var items = Items.Where(i => i.Value != null && i.Value.Template.Name == templateContext.Name)
            .Select(i => i.Value).ToList();

        var anyItem = items.FirstOrDefault();

        if (anyItem?.Template == null)
            return 0;

        var result = anyItem.Template.CanStack ? items.Sum(i => i.Stacks) : items.Count;

        return result;
    }

    public int HasCount(Template templateContext)
    {
        var items = Items.Where(i => i.Value != null && i.Value.Template.Name == templateContext.Name)
            .Select(i => i.Value).ToList();

        return items.Count;
    }

    public void Remove(WorldClient client, Item item)
    {
        if (item == null) return;

        if (Items.TryUpdate(item.InventorySlot, null, item))
            client.SendRemoveItemFromPane(item.InventorySlot);
        client.SendAttributes(StatUpdateType.Primary);
        item.DeleteFromAislingDb();
    }

    /// <summary>
    /// Removes the item from inventory (Only used when item is destroyed or dropped on the ground)
    /// Deletes the record from the database, as well as removes it from the players inventory
    /// </summary>
    public void RemoveFromInventory(WorldClient client, Item item)
    {
        if (item == null) return;

        if (Items.TryUpdate(item.InventorySlot, null, item))
            client.SendRemoveItemFromPane(item.InventorySlot);
        client.LastItemDropped = item;
        client.SendAttributes(StatUpdateType.Primary);
        item.DeleteFromAislingDb();
    }

    public void RemoveRange(WorldClient client, Item item, int range)
    {
        var remaining = Math.Abs(item.Stacks - range);
        var original = item;

        if (remaining <= 0)
        {
            RemoveFromInventory(client, item);
            item.Remove();
        }
        else
        {
            item.Stacks = (ushort)remaining;
            client.SendRemoveItemFromPane(item.InventorySlot);
            client.Aisling.Inventory.Items.TryUpdate(item.InventorySlot, item, original);
            UpdateSlot(client, item);
        }

        UpdatePlayersWeight(client);
    }

    public void AddRange(WorldClient client, Item item, int range)
    {
        var given = Math.Abs(item.Stacks + range);
        var original = item;

        if (given <= 0)
        {
            RemoveFromInventory(client, item);
            item.Remove();
        }
        else
        {
            item.Stacks = (ushort)given;
            client.SendRemoveItemFromPane(item.InventorySlot);
            client.Aisling.Inventory.Items.TryUpdate(item.InventorySlot, item, original);
            UpdateSlot(client, item);
        }

        UpdatePlayersWeight(client);
    }

    public void UpdateSlot(WorldClient client, Item item)
    {
        item.Scripts = ScriptManager.Load<ItemScript>(item.Template.ScriptName, item);
        if (!string.IsNullOrEmpty(item.Template.WeaponScript))
            item.WeaponScripts = ScriptManager.Load<WeaponScript>(item.Template.WeaponScript, item);
        client.SendAddItemToPane(item);
        UpdatePlayersWeight(client);
    }

    public void UpdatePlayersWeight(WorldClient client)
    {
        client.Aisling.CurrentWeight = 0;

        foreach (var inventory in client.Aisling.Inventory.Items)
        {
            if (inventory.Value == null) continue;
            if (inventory.Value.Stacks > 1)
            {
                for (var i = 0; i < inventory.Value.Stacks; i++)
                {
                    client.Aisling.CurrentWeight += inventory.Value.Template.CarryWeight;
                }
            }
            else
            {
                client.Aisling.CurrentWeight += inventory.Value.Template.CarryWeight;
            }
        }

        foreach (var equipment in client.Aisling.EquipmentManager.Equipment)
        {
            if (equipment.Value?.Slot == 0) continue;
            if (equipment.Value?.Item == null) continue;
            client.Aisling.CurrentWeight += equipment.Value.Item.Template.CarryWeight;
        }
    }

    public override bool Equals(object obj)
    {
        if (obj is not Inventory inv) return false;
        return Equals(Items.Values, inv.Items.Values) && Equals(Items.Keys, inv.Items.Keys);
    }

    public override int GetHashCode()
    {
        unchecked
        {
            var hash = 17;
            hash = hash * 23 + Items.Values.GetHashCode();
            return hash * 23 + Items.Keys.GetHashCode();
        }
    }

    public (bool, int) TrySwap(WorldClient client, byte slot1, byte slot2)
    {
        if (!IsValidSlot(slot1) || !IsValidSlot(slot2)) return (false, 0);
        if (slot1 == slot2) return (true, 0);

        var item1 = FindInSlot(slot1);
        var item2 = FindInSlot(slot2);

        if (slot2 == 59)
        {
            if (!item1.Template.Flags.FlagIsSet(ItemFlags.Bankable))
            {
                client.SendServerMessage(ServerMessageType.ActiveMessage, $"{{=bBound!");
                return (false, 1);
            }

            if (!Items.TryUpdate(item1.InventorySlot, null, item1)) return (true, 0);
            item1.ItemPane = Item.ItemPanes.Bank;
            if (client.Aisling.BankManager.Items.TryAdd(item1.ItemId, item1))
                client.SendRemoveItemFromPane(item1.InventorySlot);
            
            client.SendServerMessage(ServerMessageType.ActiveMessage, $"{{=cDeposited: {{=g{item1.DisplayName}");
            UpdatePlayersWeight(client);
            return (true, 0);
        }

        if ((item1 == null)
            || (item2 == null)
            || !item1.Template.CanStack
            || !item2.Template.CanStack
            || (item1.Stacks == item1.Template.MaxStack)
            || (item2.Stacks == item2.Template.MaxStack)
            || !item1.DisplayName.EqualsI(item2.DisplayName))
            return AttemptSwap(client, item1, item2, slot1, slot2);

        // Stacks remaining on an item
        var stacksCanSupport = item2.Template.MaxStack - item2.Stacks;

        // Max number capable of stacking
        var stacksToGive = Math.Min(stacksCanSupport, item1.Stacks);

        if (item1.Stacks > stacksToGive)
        {
            return AttemptSwap(client, item1, item2, slot1, slot2);
        }

        AddRange(client, item2, item1.Stacks);
        RemoveFromInventory(client, item1);

        return (true, 0);
    }

    private (bool, int) AttemptSwap(WorldClient client, Item item1, Item item2, byte slot1, byte slot2)
    {
        if (item1 != null)
            client.SendRemoveItemFromPane(item1.InventorySlot);
        if (item2 != null)
            client.SendRemoveItemFromPane(item2.InventorySlot);

        if (item1 != null && item2 != null)
        {
            item1.InventorySlot = slot2;
            item2.InventorySlot = slot1;
            Items.TryUpdate(slot1, item2, item1);
            Items.TryUpdate(slot2, item1, item2);
            UpdateSlot(client, item1);
            UpdateSlot(client, item2);
            return (true, 0);
        }

        switch (item1)
        {
            // Handle spaces with nulls
            case null when item2 != null:
                item2.InventorySlot = slot1;
                Items.TryUpdate(slot1, item2, null);
                Items.TryUpdate(slot2, null, item2);
                UpdateSlot(client, item2);
                return (true, 0);
            case null:
                return (true, 0);
        }

        item1.InventorySlot = slot2;
        Items.TryUpdate(slot1, null, item1);
        Items.TryUpdate(slot2, item1, null);
        UpdateSlot(client, item1);
        return (true, 0);
    }
}

public class InventoryComparer : IEqualityComparer<Inventory>
{
    public bool Equals(Inventory x, Inventory y)
    {
        if (x == null || y == null) return false;
        if (ReferenceEquals(x, y)) return true;
        return Equals(x.Items.Values, y.Items.Values) && Equals(x.Items.Keys, y.Items.Keys);
    }

    public int GetHashCode(Inventory obj)
    {
        unchecked
        {
            var hash = 17;
            hash = hash * 23 + obj.Items.Values.GetHashCode();
            return hash * 23 + obj.Items.Keys.GetHashCode();
        }
    }
}