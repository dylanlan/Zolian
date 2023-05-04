USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[InventorySave]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[InventorySave]
GO
/****** Object:  StoredProcedure [dbo].[InventorySave]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InventorySave]
@ItemId INT, @Name VARCHAR(45), @Serial INT, @Color INT, @Cursed BIT, @Durability INT, @Identified BIT, @ItemVariance VARCHAR(15),
@WeapVariance VARCHAR(15), @ItemQuality VARCHAR(10), @OriginalQuality VARCHAR(10), @InventorySlot INT, @Stacks INT, @Enchantable BIT
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [ZolianPlayers].[dbo].[PlayersInventory]
    SET    [ItemId] = @ItemId,
	[Name] = @Name,
	[Serial] = @Serial,
	[Color] = @Color,
	[Cursed] = @Cursed,
	[Durability] = @Durability,
	[Identified] = @Identified,
	[ItemVariance] = @ItemVariance,
	[WeapVariance] = @WeapVariance,
	[ItemQuality] = @ItemQuality,
	[OriginalQuality] = @OriginalQuality,
	[InventorySlot] = @InventorySlot,
	[Stacks] = @Stacks,
	[Enchantable] = @Enchantable
    WHERE  Serial = @Serial AND ItemId = @ItemId;
END

GO
