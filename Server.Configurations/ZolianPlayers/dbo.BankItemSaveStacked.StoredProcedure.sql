USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[BankItemSaveStacked]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[BankItemSaveStacked]
GO
/****** Object:  StoredProcedure [dbo].[BankItemSaveStacked]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BankItemSaveStacked]
@ItemId INT, @Name VARCHAR(45), @Serial INT, @Color INT, @Cursed BIT, @Durability INT, @Identified BIT, @ItemVariance VARCHAR(15),
@WeapVariance VARCHAR(15), @ItemQuality VARCHAR(10), @OriginalQuality VARCHAR(10), @Stacks INT, @Enchantable BIT, @CanStack BIT
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [ZolianPlayers].[dbo].[PlayersBanked]
    SET
	[Name] = @Name,
	[Color] = @Color,
	[Cursed] = @Cursed,
	[Durability] = @Durability,
	[Identified] = @Identified,
	[ItemVariance] = @ItemVariance,
	[WeapVariance] = @WeapVariance,
	[ItemQuality] = @ItemQuality,
	[OriginalQuality] = @OriginalQuality,
	[Stacks] = @Stacks,
	[Enchantable] = @Enchantable,
	[Stackable] = @CanStack	
    WHERE  Serial = @Serial AND [Name] = @Name;
END

GO
