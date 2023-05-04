USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[PlayerQuickSave]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[PlayerQuickSave]
GO
/****** Object:  StoredProcedure [dbo].[PlayerQuickSave]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PlayerQuickSave]
@Name VARCHAR (12), @X INT, @Y INT, @CurrentMap INT, @OffensePrimary VARCHAR (15), @DefensePrimary VARCHAR (15), @OffenseSecondary VARCHAR (15), @DefenseSecondary VARCHAR (15), @Direction INT, @CurrentHp INT, @BaseHp INT, @CurrentMp INT, @BaseMp INT, @AC INT, @Regen INT, @Dmg INT, @Hit INT, @Mr INT, @Str INT, @Int INT, @Wis INT, @Con INT, @Dex INT, @Luck INT, @ABL INT, @ABN INT, @ABT INT, @EXPL INT, @EXPN INT, @EXPT INT, @Afflix VARCHAR (10), @HairColor INT, @HairStyle INT, @OldColor INT, @OldStyle INT, @Animal VARCHAR (10), @Monster INT, @Active VARCHAR (15), @Flags VARCHAR (6), @CurrentWeight INT, @World INT, @Lantern INT, @Invisible BIT, @Resting VARCHAR (13), @PartyStatus VARCHAR (21), @GoldPoints BIGINT, @StatPoints INT, @GamePoints INT, @BankedGold BIGINT, @ArmorImg INT, @HelmetImg INT, @ShieldImg INT, @WeaponImg INT, @BootsImg INT, @HeadAccessory1Img INT, @HeadAccessory2Img INT, @OverCoatImg INT, @BootColor INT, @OverCoatColor INT, @Pants INT, @Aegis INT, @Bleeding INT, @Spikes INT, @Rending INT, @Reaping INT, @Vampirism INT, @Haste INT, @Gust INT, @Quake INT, @Rain INT, @Flame INT, @Dusk INT, @Dawn INT
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [ZolianPlayers].[dbo].[Players]
    SET    [X]                         = @X,
           [Y]                         = @Y,
           [CurrentMapId]              = @CurrentMap,
           [OffenseElement]            = @OffensePrimary,
           [DefenseElement]            = @DefensePrimary,
           [SecondaryOffensiveElement] = @OffenseSecondary,
           [SecondaryDefensiveElement] = @DefenseSecondary,
           [Direction]                 = @Direction,
           [CurrentHp]                 = @CurrentHp,
           [BaseHp]                    = @BaseHp,
           [CurrentMp]                 = @CurrentMp,
           [BaseMp]                    = @BaseMp,
           [_ac]                       = @AC,
           [_Regen]                    = @Regen,
           [_Dmg]                      = @Dmg,
           [_Hit]                      = @Hit,
           [_Mr]                       = @Mr,
           [_Str]                      = @Str,
           [_Int]                      = @Int,
           [_Wis]                      = @Wis,
           [_Con]                      = @Con,
           [_Dex]                      = @Dex,
           [_Luck]                     = @Luck,
           [AbpLevel]                  = @ABL,
           [AbpNext]                   = @ABN,
           [AbpTotal]                  = @ABT,
           [ExpLevel]                  = @EXPL,
           [ExpNext]                   = @EXPN,
           [ExpTotal]                  = @EXPT,
           [Afflictions]               = @Afflix,
           [HairColor]                 = @HairColor,
           [HairStyle]                 = @HairStyle,
           [OldColor]                  = @OldColor,
           [OldStyle]                  = @OldStyle,
           [AnimalForm]                = @Animal,
           [MonsterForm]               = @Monster,
           [ActiveStatus]              = @Active,
           [Flags]                     = @Flags,
           [CurrentWeight]             = @CurrentWeight,
           [World]                     = @World,
           [Lantern]                   = @Lantern,
           [Invisible]                 = @Invisible,
           [Resting]                   = @Resting,
           [PartyStatus]               = @PartyStatus,
           [GoldPoints]                = @GoldPoints,
           [StatPoints]                = @StatPoints,
           [GamePoints]                = @GamePoints,
           [BankedGold]                = @BankedGold,
           [ArmorImg]                  = @ArmorImg,
           [HelmetImg]                 = @HelmetImg,
           [ShieldImg]                 = @ShieldImg,
           [WeaponImg]                 = @WeaponImg,
           [BootsImg]                  = @BootsImg,
           [HeadAccessory1Img]         = @HeadAccessory1Img,
           [HeadAccessory2Img]         = @HeadAccessory2Img,
           [OverCoatImg]               = @OverCoatImg,
           [BootColor]                 = @BootColor,
           [OverCoatColor]             = @OverCoatColor,
           [Pants]                     = @Pants,
           [Aegis]                     = @Aegis,
           [Bleeding]                  = @Bleeding,
           [Spikes]                    = @Spikes,
           [Rending]                   = @Rending,
           [Reaping]                   = @Reaping,
           [Vampirism]                 = @Vampirism,
           [Haste]                     = @Haste,
           [Gust]                      = @Gust,
           [Quake]                     = @Quake,
           [Rain]                      = @Rain,
           [Flame]                     = @Flame,
           [Dusk]                      = @Dusk,
           [Dawn]                      = @Dawn
    WHERE  Username = @Name;
END

GO
