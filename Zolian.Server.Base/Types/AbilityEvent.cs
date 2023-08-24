﻿using Darkages.Sprites;

namespace Darkages.Types;

public struct AbilityEvent
{
    public Aisling Player { get; }
    public int Exp { get; }
    public bool Hunting { get; }
    public bool Overflow { get; }

    public AbilityEvent(Aisling player, int exp, bool hunting, bool overflow)
    {
        Player = player;
        Exp = exp;
        Hunting = hunting;
        Overflow = overflow;
    }
}