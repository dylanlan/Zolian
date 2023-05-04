USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[SpellToPlayer]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[SpellToPlayer]
GO
/****** Object:  StoredProcedure [dbo].[SpellToPlayer]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SpellToPlayer]
@SpellId INT, @Serial INT, @Level INT, @Slot INT,
@SpellName VARCHAR (30), @Casts INT, @CurrentCooldown INT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT  INTO [ZolianPlayers].[dbo].[PlayersSpellBook]
	([SpellId], [Serial], [Level], [Slot], [SpellName], [Casts], [CurrentCooldown])
    VALUES	(@SpellId, @Serial, @Level, @Slot, @SpellName, @Casts, @CurrentCooldown);
END

GO
