USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[PlayerCreation]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[PlayerCreation]
GO
/****** Object:  StoredProcedure [dbo].[PlayerCreation]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PlayerCreation]
@Serial INT, @Created DATETIME, @UserName VARCHAR (12), @Password VARCHAR (8), @LastLogged DATETIME, @CurrentHp INT, @BaseHp INT, @CurrentMp INT, @BaseMp INT, @Gender VARCHAR (6), @HairColor INT, @HairStyle INT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT  INTO [ZolianPlayers].[dbo].[Players] ([Serial], [Created], [Username], [Password], [PasswordAttempts], [Hacked], [LoggedIn], [LastLogged], [X], [Y], [CurrentMapId], [OffenseElement], [DefenseElement], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [Direction], [CurrentHp], [BaseHp], [CurrentMp], [BaseMp], [_ac], [_Regen], [_Dmg], [_Hit], [_Mr], [_Str], [_Int], [_Wis], [_Con], [_Dex], [_Luck], [AbpLevel], [AbpNext], [AbpTotal], [ExpLevel], [ExpNext], [ExpTotal], [Stage], [Path], [PastClass], [Race], [Afflictions], [Gender], [HairColor], [HairStyle], [OldColor], [OldStyle], [NameColor], [ProfileMessage], [Nation], [Clan], [ClanRank], [ClanTitle], [AnimalForm], [MonsterForm], [ActiveStatus], [Flags], [CurrentWeight], [World], [Lantern], [Invisible], [Resting], [FireImmunity], [WaterImmunity], [WindImmunity], [EarthImmunity], [LightImmunity], [DarkImmunity], [PoisonImmunity], [EnticeImmunity], [PartyStatus], [RaceSkill], [RaceSpell], [GameMaster], [ArenaHost], [Developer], [Ranger], [Knight], [GoldPoints], [StatPoints], [GamePoints], [BankedGold], [ArmorImg], [HelmetImg], [ShieldImg], [WeaponImg], [BootsImg], [HeadAccessory1Img], [HeadAccessory2Img], [OverCoatImg], [BootColor], [OverCoatColor], [Pants], [Aegis], [Bleeding], [Spikes], [Rending], [Reaping], [Vampirism], [Haste], [Gust], [Quake], [Rain], [Flame], [Dusk], [Dawn])
    VALUES                                      (@Serial, @Created, @UserName, @Password, '0', 'False', 'False', @LastLogged, '7', '23', '7000', 'None', 'None', 'None', 'None', '0', @CurrentHp, @BaseHp, @CurrentMp, @BaseMp, '0', '0', '0', '0', '0', '5', '5', '5', '5', '5', '0', '0', '0', '0', '1', '600', '0', 'Class', 'Peasant', 'Peasant', 'UnDecided', 'Normal', @Gender, @HairColor, @HairStyle, @HairColor, @HairStyle, '1', '', 'Mileth', '', '', '', 'None', '0', 'Awake', 'Normal', '0', '0', '0', 'False', 'Standing', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'AcceptingRequests', '', '', 'False', 'False', 'False', 'False', 'False', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
END

GO
