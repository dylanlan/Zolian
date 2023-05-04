USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[ItemToEquipped]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[ItemToEquipped]
GO
/****** Object:  StoredProcedure [dbo].[ItemToEquipped]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ItemToEquipped]
@ItemId INT, @Name VARCHAR(45), @Serial INT, @Color INT, @Cursed BIT, @Durability INT, @Identified BIT, @ItemVariance VARCHAR(15),
@WeapVariance VARCHAR(15), @ItemQuality VARCHAR(10), @OriginalQuality VARCHAR(10), @Slot INT, @Stacks INT, @Enchantable BIT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT  INTO [ZolianPlayers].[dbo].[PlayersEquipped] ([ItemId], [Name], [Serial], [Color], [Cursed], [Durability], [Identified],
	[ItemVariance], [WeapVariance], [ItemQuality], [OriginalQuality], [Slot], [Stacks], [Enchantable])
    VALUES (@ItemId, @Name, @Serial, @Color, @Cursed, @Durability, @Identified, @ItemVariance, @WeapVariance, @ItemQuality, @OriginalQuality,
	@Slot, @Stacks, @Enchantable);
END

GO
