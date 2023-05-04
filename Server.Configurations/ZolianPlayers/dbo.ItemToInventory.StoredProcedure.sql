USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[ItemToInventory]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[ItemToInventory]
GO
/****** Object:  StoredProcedure [dbo].[ItemToInventory]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ItemToInventory]
@ItemId INT, @Name VARCHAR(45), @Serial INT, @Color INT, @Cursed BIT, @Durability INT, @Identified BIT, @ItemVariance VARCHAR(15),
@WeapVariance VARCHAR(15), @ItemQuality VARCHAR(10), @OriginalQuality VARCHAR(10), @InventorySlot INT, @Stacks INT, @Enchantable BIT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT  INTO [ZolianPlayers].[dbo].[PlayersInventory] ([ItemId], [Name], [Serial], [Color], [Cursed], [Durability], [Identified],
	[ItemVariance], [WeapVariance], [ItemQuality], [OriginalQuality], [InventorySlot], [Stacks], [Enchantable])
    VALUES (@ItemId, @Name, @Serial, @Color, @Cursed, @Durability, @Identified, @ItemVariance, @WeapVariance, @ItemQuality, @OriginalQuality,
	@InventorySlot, @Stacks, @Enchantable);
END

GO
