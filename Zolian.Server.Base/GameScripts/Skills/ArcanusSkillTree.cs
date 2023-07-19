﻿using Chaos.Common.Definitions;
using Chaos.Networking.Entities.Server;
using Darkages.Enums;
using Darkages.Scripting;
using Darkages.Sprites;
using Darkages.Types;

namespace Darkages.GameScripts.Skills;

[Script("Flame Thrower")]
public class Flame_Thrower : SkillScript
{
    private readonly Skill _skill;
    private Sprite _target;
    private bool _crit;
    private bool _success;
    private readonly GlobalSkillMethods _skillMethod;

    public Flame_Thrower(Skill skill) : base(skill)
    {
        _skill = skill;
        _skillMethod = new GlobalSkillMethods();
    }

    public override void OnFailed(Sprite sprite)
    {
        if (_target is not { Alive: true }) return;
        if (sprite.NextTo(_target.Position.X, _target.Position.Y) &&
            sprite.Facing(_target.Position.X, _target.Position.Y, out _))
            sprite.SendTargetedClientMethod(Scope.NearbyAislings, c => c.SendAnimation(_skill.Template.MissAnimation, _target.Serial));
    }

    public override async void OnSuccess(Sprite sprite)
    {
        if (sprite is not Aisling aisling) return;
        var client = aisling.Client;
        aisling.ActionUsed = "Flame Thrower";

        var action = new BodyAnimationArgs
        {
            AnimationSpeed = 40,
            BodyAnimation = (BodyAnimation)0x06,
            Sound = null,
            SourceId = aisling.Serial
        };

        if (aisling.CurrentMp - 300 > 0)
        {
            aisling.CurrentMp -= 300;
        }
        else
        {
            client.SendServerMessage(ServerMessageType.OrangeBar1, $"{ServerSetup.Instance.Config.NoManaMessage}");
            _skillMethod.FailedAttempt(aisling, _skill, action);
            OnFailed(aisling);
            return;
        }

        var enemy = client.Aisling.DamageableGetInFront(6);

        if (enemy.Count == 0)
        {
            _skillMethod.FailedAttempt(aisling, _skill, action);
            OnFailed(aisling);
            return;
        }

        await SendAnimations(aisling, enemy);

        // enemy.Count = 0 verified that there is an enemy
        _target = enemy.First();

        if (_target.Serial == aisling.Serial || !_target.Attackable)
        {
            _skillMethod.FailedAttempt(aisling, _skill, action);
            OnFailed(aisling);
            return;
        }

        if (_target.SpellReflect)
        {
            sprite.SendTargetedClientMethod(Scope.NearbyAislings, c => c.SendAnimation(184, _target.Serial));
            sprite.Client.SendServerMessage(ServerMessageType.OrangeBar1, "Your spell has been reflected!");

            if (_target is Aisling)
                _target.Client.SendServerMessage(ServerMessageType.OrangeBar1, $"You reflected {_skill.Template.Name}.");

            _target = Spell.SpellReflect(_target, sprite);
        }

        if (_target.SpellNegate)
        {
            sprite.SendTargetedClientMethod(Scope.NearbyAislings, c => c.SendAnimation(64, _target.Serial));
            client.SendServerMessage(ServerMessageType.OrangeBar1, "Your spell has been deflected!");
            if (_target is Aisling)
                _target.Client.SendServerMessage(ServerMessageType.OrangeBar1, $"You deflected {_skill.Template.Name}.");

            return;
        }

        var dmgCalc = DamageCalc(sprite);
        _target.ApplyElementalSkillDamage(aisling, dmgCalc, ElementManager.Element.Fire, _skill);
        sprite.SendTargetedClientMethod(Scope.NearbyAislings, c => c.SendAnimation(170, _target.Serial));
        _skillMethod.OnSuccess(_target, aisling, _skill, 0, false, action);
    }

    public override async void OnUse(Sprite sprite)
    {
        if (!_skill.CanUseZeroLineAbility) return;

        if (sprite is Aisling aisling)
        {
            var client = aisling.Client;

            if (client.Aisling.EquipmentManager.Equipment[1]?.Item?.Template.Group is not ("Wands"))
            {
                OnFailed(aisling);
                return;
            }

            _success = _skillMethod.OnUse(aisling, _skill);

            if (_success)
            {
                OnSuccess(aisling);
            }
            else
            {
                OnFailed(aisling);
            }
        }
        else
        {
            var enemy = sprite.MonsterGetInFront(5);

            if (enemy.Count == 0) return;
            await SendAnimations(sprite, enemy);

            foreach (var i in enemy.Where(i => i != null && sprite.Serial != i.Serial && i.Attackable))
            {
                _target = i;

                if (_target.SpellReflect)
                {
                    _target.SendTargetedClientMethod(Scope.NearbyAislings, c => c.SendAnimation(184, _target.Serial));
                    if (_target is Aisling)
                        _target.Client.SendServerMessage(ServerMessageType.OrangeBar1, $"You reflected {_skill.Template.Name}.");

                    _target = Spell.SpellReflect(_target, sprite);
                }

                if (_target.SpellNegate)
                {
                    _target.SendTargetedClientMethod(Scope.NearbyAislings, c => c.SendAnimation(64, _target.Serial));
                    if (_target is Aisling)
                        _target.Client.SendServerMessage(ServerMessageType.OrangeBar1, $"You deflected {_skill.Template.Name}.");

                    continue;
                }

                var dmgCalc = DamageCalc(sprite);
                _target.ApplyElementalSkillDamage(sprite, dmgCalc, ElementManager.Element.Fire, _skill);

                if (_skill.Template.TargetAnimation > 0)
                    if (_target is Monster or Mundane or Aisling)
                        sprite.SendTargetedClientMethod(Scope.NearbyAislings, c => c.SendAnimation(_skill.Template.TargetAnimation, _target.Serial, 170));

                sprite.SendTargetedClientMethod(Scope.NearbyAislings, c => c.SendBodyAnimation(sprite.Serial, BodyAnimation.Assail, 30));
                if (!_crit) return;
                sprite.SendTargetedClientMethod(Scope.NearbyAislings, c => c.SendAnimation(387, sprite.Serial));
            }
        }
    }

    private static async Task SendAnimations(Sprite damageDealingSprite, IEnumerable<Sprite> enemy)
    {
        foreach (var position in damageDealingSprite.GetTilesInFront(damageDealingSprite.Position.DistanceFrom(enemy.First().Position)))
        {
            var vector = new Position(position.X, position.Y);
            await Task.Delay(200).ContinueWith(ct =>
            {
                damageDealingSprite.SendTargetedClientMethod(Scope.NearbyAislings, c => c.SendAnimation(147, 0U, 150, 0, 0U, vector));
            });
        }
    }

    private int DamageCalc(Sprite sprite)
    {
        _crit = false;
        int dmg;
        if (sprite is Aisling damageDealingAisling)
        {
            var client = damageDealingAisling.Client;
            var imp = 10 + _skill.Level;
            dmg = client.Aisling.Int * 3 + client.Aisling.Wis * 3 / damageDealingAisling.Position.DistanceFrom(_target.Position);
            dmg += dmg * imp / 100;
        }
        else
        {
            if (sprite is not Monster damageMonster) return 0;
            dmg = damageMonster.Int * 3;
            dmg += damageMonster.Wis * 5;
        }

        var critCheck = _skillMethod.OnCrit(dmg);
        _crit = critCheck.Item1;
        return critCheck.Item2;
    }
}