USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[PlayerSaveSkills]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[PlayerSaveSkills]
GO
/****** Object:  StoredProcedure [dbo].[PlayerSaveSkills]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PlayerSaveSkills]
@Serial INT, @Level INT, @Slot INT, @Skill VARCHAR (30), @Uses INT, @Cooldown INT
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [ZolianPlayers].[dbo].[PlayersSkillBook]
    SET    [Level]           = @Level,
           [Slot]            = @Slot,
           [SkillName]       = @Skill,
           [Uses]            = @Uses,
           [CurrentCooldown] = @Cooldown
    WHERE  Serial = @Serial
           AND SkillName = @Skill;
END

GO
