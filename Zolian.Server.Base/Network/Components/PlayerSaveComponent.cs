﻿using Darkages.Database;
using Darkages.Infrastructure;
using Darkages.Network.Server;

namespace Darkages.Network.Components;

public class PlayerSaveComponent : GameServerComponent
{
    private readonly GameServerTimer _timer = new(TimeSpan.FromSeconds(1));

    public PlayerSaveComponent(GameServer server) : base(server) { }

    protected internal override void Update(TimeSpan elapsedTime)
    {
        if (_timer.Update(elapsedTime))
        {
            ZolianUpdateDelegate.Update(UpdatePlayerSave);
        }
    }

    private static async void UpdatePlayerSave()
    {
        if (!ServerSetup.Instance.Running || ServerSetup.Instance.Game.Clients == null) return;
        foreach (var client in ServerSetup.Instance.Game.Clients.Values.Where(client => client is { Aisling: not null }))
        {
            if (!client.Aisling.LoggedIn) continue;

            await StorageManager.AislingBucket.QuickSave(client.Aisling);

            var readyTime = DateTime.Now;
            if ((readyTime - client.LastSave).TotalSeconds > ServerSetup.Instance.Config.SaveRate)
                await client.Save();
        }
    }
}