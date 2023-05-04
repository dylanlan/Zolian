USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[SkillToPlayer]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[SkillToPlayer]
GO
/****** Object:  StoredProcedure [dbo].[SkillToPlayer]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SkillToPlayer]
@SkillId INT, @Serial INT, @Level INT, @Slot INT,
@SkillName VARCHAR (30), @Uses INT, @CurrentCooldown INT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT  INTO [ZolianPlayers].[dbo].[PlayersSkillBook]
	([SkillId], [Serial], [Level], [Slot], [SkillName], [Uses], [CurrentCooldown])
    VALUES	(@SkillId, @Serial, @Level, @Slot, @SkillName, @Uses, @CurrentCooldown);
END

GO
