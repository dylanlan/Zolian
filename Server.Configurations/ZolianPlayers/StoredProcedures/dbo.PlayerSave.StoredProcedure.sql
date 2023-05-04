USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[PlayerSave]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[PlayerSave]
GO
/****** Object:  StoredProcedure [dbo].[PlayerSave]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PlayerSave]
@Name VARCHAR (12), @LoggedIn BIT, @LastLogged DATETIME, @Stage VARCHAR (10), @Path VARCHAR (10), @PastClass VARCHAR (10), @Race VARCHAR (10), @Gender VARCHAR (6), @NameColor INT, @Profile VARCHAR (100), @Nation VARCHAR (30), @Clan VARCHAR (20), @ClanRank VARCHAR (20), @ClanTitle VARCHAR (20), @FireImm BIT, @WaterImm BIT, @WindImm BIT, @EarthImm BIT, @LightImm BIT, @DarkImm BIT, @PoisonImm BIT, @EnticeImm BIT, @RaceSkill VARCHAR (20), @RaceSpell VARCHAR (20), @GM BIT, @AH BIT, @DEV BIT, @Ranger BIT, @Knight BIT
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [ZolianPlayers].[dbo].[Players]
    SET    [Username]       = @Name,
           [LoggedIn]       = @LoggedIn,
           [LastLogged]     = @LastLogged,
           [Stage]          = @Stage,
           [Path]           = @Path,
           [PastClass]      = @PastClass,
           [Race]           = @Race,
           [Gender]         = @Gender,
           [NameColor]      = @NameColor,
           [ProfileMessage] = @Profile,
           [Nation]         = @Nation,
           [Clan]           = @Clan,
           [ClanRank]       = @ClanRank,
           [ClanTitle]      = @ClanTitle,
           [FireImmunity]   = @FireImm,
           [WaterImmunity]  = @WaterImm,
           [WindImmunity]   = @WindImm,
           [EarthImmunity]  = @EarthImm,
           [LightImmunity]  = @LightImm,
           [DarkImmunity]   = @DarkImm,
           [PoisonImmunity] = @PoisonImm,
		   [EnticeImmunity] = @EnticeImm,
           [RaceSkill]      = @RaceSkill,
           [RaceSpell]      = @RaceSpell,
           [GameMaster]     = @GM,
           [ArenaHost]      = @AH,
           [Developer]      = @DEV,
           [Ranger]         = @Ranger,
           [Knight]         = @Knight
    WHERE  Username = @Name;
END

GO
