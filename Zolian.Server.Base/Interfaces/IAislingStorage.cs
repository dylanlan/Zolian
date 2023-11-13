﻿using Darkages.Sprites;

using Microsoft.Data.SqlClient;

namespace Darkages.Interfaces;

public interface IAislingStorage
{
    Task<Aisling> LoadAisling(string name, long serial);
    /// <summary>
    /// Save method for password attempts & password change
    /// </summary>
    Task<bool> PasswordSave(Aisling obj);
    /// <summary>
    /// Save method for spells, skills, items, buffs, debuffs
    /// </summary>
    Task AuxiliarySave(Aisling obj);
    /// <summary>
    /// Save method for an individual player
    /// </summary>
    Task<bool> Save(Aisling obj);
    /// <summary>
    /// Server Save method used to save all players on the server at once
    /// </summary>
    Task<bool> ServerSave(List<Aisling> playerList);
    void SaveSkills(Aisling obj, SqlConnection connection);
    void SaveSpells(Aisling obj, SqlConnection connection);
    void SaveBuffs(Aisling aisling, SqlConnection connection);
    void SaveDebuffs(Aisling aisling, SqlConnection connection);
    void SaveItemsForPlayer(Aisling obj, SqlConnection connection);
    Task<bool> CheckIfPlayerExists(string name);
    Task<bool> CheckIfPlayerExists(string name, long serial);
    Task<Aisling> CheckPassword(string name);
    Task Create(Aisling obj);
}