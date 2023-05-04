USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[InsertQuests]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[InsertQuests]
GO
/****** Object:  StoredProcedure [dbo].[InsertQuests]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertQuests]
@QuestId INT, @Serial INT, @TutComplete BIT, @BetaReset BIT, @StoneSmith INT, @MilethRep INT, @ArtursGift INT, @CamilleGreeting BIT, @ConnPotions BIT, @CryptTerror BIT, @CryptTerrorSlayed BIT, @Dar INT, @DarItem VARCHAR (20), @EternalLove BIT, @Fiona BIT, @Keela INT, @KeelaCount INT, @KeelaKill VARCHAR (20), @KeelaQuesting BIT, @KillerBee BIT, @Neal INT, @NealCount INT, @NealKill VARCHAR (20), @AbelShopAccess BIT, @PeteKill INT, @PeteComplete BIT, @SwampAccess BIT, @SwampCount INT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT  INTO [ZolianPlayers].[dbo].[PlayersQuests] ([QuestId], [Serial], [TutorialCompleted], [BetaReset], [StoneSmithing], [MilethReputation], [ArtursGift], [CamilleGreetingComplete], [ConnPotions], [CryptTerror], [CryptTerrorSlayed], [Dar], [DarItem], [EternalLove], [FionaDance], [Keela], [KeelaCount], [KeelaKill], [KeelaQuesting], [KillerBee], [Neal], [NealCount], [NealKill], [AbelShopAccess], [PeteKill], [PeteComplete], [SwampAccess], [SwampCount])
    VALUES                                            (@QuestId, @Serial, @TutComplete, @BetaReset, @StoneSmith, @MilethRep, @ArtursGift, @CamilleGreeting, @ConnPotions, @CryptTerror, @CryptTerrorSlayed, @Dar, @DarItem, @EternalLove, @Fiona, @Keela, @KeelaCount, @KeelaKill, @KeelaQuesting, @KillerBee, @Neal, @NealCount, @NealKill, @AbelShopAccess, @PeteKill, @PeteComplete, @SwampAccess, @SwampCount);
END

GO
