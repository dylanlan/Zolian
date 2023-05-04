USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[PlayerSaveSpells]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[PlayerSaveSpells]
GO
/****** Object:  StoredProcedure [dbo].[PlayerSaveSpells]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PlayerSaveSpells]
@Serial INT, @Level INT, @Slot INT, @Spell VARCHAR (30), @Casts INT, @Cooldown INT
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [ZolianPlayers].[dbo].[PlayersSpellBook]
    SET    [Level]           = @Level,
           [Slot]            = @Slot,
           [SpellName]       = @Spell,
           [Casts]           = @Casts,
           [CurrentCooldown] = @Cooldown
    WHERE  Serial = @Serial
           AND SpellName = @Spell;
END

GO
