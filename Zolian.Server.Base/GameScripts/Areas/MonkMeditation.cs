﻿using Darkages.Network.Client;
using Darkages.ScriptingBase;
using Darkages.Sprites;
using Darkages.Types;

using System.Numerics;
using System.Collections.Concurrent;
using Darkages.Enums;

namespace Darkages.GameScripts.Areas;

[Script("Monk Meditation")]
public class MonkMeditation : AreaScript
{
    private readonly ConcurrentDictionary<long, Aisling> _playersOnMap = new();

    public MonkMeditation(Area area) : base(area) => Area = area;
    public override void Update(TimeSpan elapsedTime) { }

    public override void OnMapEnter(WorldClient client) => _playersOnMap.TryAdd(client.Aisling.Serial, client.Aisling);

    public override void OnMapExit(WorldClient client) => _playersOnMap.TryRemove(client.Aisling.Serial, out _);

    public override void OnPlayerWalk(WorldClient client, Position oldLocation, Position newLocation)
    {
        var vectorMap = new Vector2(newLocation.X, newLocation.Y);
        if (client.Aisling.Pos != vectorMap) return;
        if (client.Aisling.Path != Class.Monk && client.Aisling.PastClass != Class.Monk) return;
        switch (client.Aisling.QuestManager.BeltDegree)
        {
            case "White":
                // 5 4
                return;
            case "Yellow":
                // 13 9
                return;
            case "Orange":
                // 4 11
                return;
            case "Green":
                // 9 3
                return;
            case "Purple":
                // 11 12
                return;
            case "Blue":
                // 3 7
                return;
            case "Brown":
                // 12 5
                return;
            case "Red":
                // 7 13
                return;
            case "":
            case "Black":
                return;
        }
    }
}