﻿using System.Numerics;
using Darkages.Enums;
using Darkages.Infrastructure;
using Darkages.Network.Client;
using Darkages.Network.Formats.Models.ServerFormats;
using Darkages.Scripting;
using Darkages.Sprites;
using Darkages.Types;

namespace Darkages.GameScripts.Areas;

[Script("ToV")] // Temple of Void Area Map
public class ToV : AreaScript
{
    private Sprite _aisling;
    private GameServerTimer AnimTimer { get; set; }
    private GameServerTimer AnimTimer2 { get; set; }
    private bool _animate;

    public ToV(Area area) : base(area)
    {
        Area = area;
        AnimTimer = new GameServerTimer(TimeSpan.FromMilliseconds(1 + 5000));
        AnimTimer2 = new GameServerTimer(TimeSpan.FromMilliseconds(2500));
    }

    public override void Update(TimeSpan elapsedTime)
    {
        if (_aisling == null) return;
        if (_aisling.Map.ID != 14757)
            _animate = false;

        if (_animate)
            HandleMapAnimations(elapsedTime);
    }

    public override void OnMapEnter(GameClient client)
    {
        _aisling = client.Aisling;
        _animate = true;
    }

    public override void OnMapExit(GameClient client)
    {
        _aisling = null;
        _animate = false;
    }

    public override void OnMapClick(GameClient client, int x, int y)
    {
        if (x == 15 && y == 52 || x == 14 && y == 51 || x == 14 && y == 50)
        {
            client.OpenBoard("Hunting");
        }
    }

    public override void OnPlayerWalk(GameClient client, Position oldLocation, Position newLocation) { }
    public override void OnItemDropped(GameClient client, Item itemDropped, Position locationDropped) { }
    public override void OnGossip(GameClient client, string message) { }

    private void HandleMapAnimations(TimeSpan elapsedTime)
    {
        var a = AnimTimer.Update(elapsedTime);
        var b = AnimTimer2.Update(elapsedTime);

        if (_aisling?.Map.ID != 14757) return;
        if (a)
        {
            _aisling?.Show(Scope.NearbyAislings, new ServerFormat29(193, new Vector2(15, 55)));
            _aisling?.Show(Scope.NearbyAislings, new ServerFormat29(193, new Vector2(20, 55)));
            _aisling?.Show(Scope.NearbyAislings, new ServerFormat29(193, new Vector2(19, 38)));
        }

        if (b)
        {
            _aisling?.Show(Scope.NearbyAislings, new ServerFormat29(96, new Vector2(17, 59)));
            _aisling?.Show(Scope.NearbyAislings, new ServerFormat29(96, new Vector2(18, 59)));
        }
    }
}