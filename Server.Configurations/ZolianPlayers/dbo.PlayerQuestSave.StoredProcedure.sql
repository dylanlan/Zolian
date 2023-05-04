USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[PlayerQuestSave]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[PlayerQuestSave]
GO
/****** Object:  StoredProcedure [dbo].[PlayerQuestSave]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PlayerQuestSave]
@Serial INT, @TutComplete BIT, @BetaReset BIT, @StoneSmith INT, @MilethRep INT, @ArtursGift INT, @CamilleGreeting BIT, @ConnPotions BIT, @CryptTerror BIT, @CryptTerrorSlayed BIT, @Dar INT, @DarItem VARCHAR (20), @EternalLove BIT, @Fiona BIT, @Keela INT, @KeelaCount INT, @KeelaKill VARCHAR (20), @KeelaQuesting BIT, @KillerBee BIT, @Neal INT, @NealCount INT, @NealKill VARCHAR (20), @AbelShopAccess BIT, @PeteKill INT, @PeteComplete BIT, @SwampAccess BIT, @SwampCount INT
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [ZolianPlayers].[dbo].[PlayersQuests]
    SET    [TutorialCompleted]       = @TutComplete,
           [BetaReset]               = @BetaReset,
           [StoneSmithing]           = @StoneSmith,
           [MilethReputation]        = @MilethRep,
           [ArtursGift]              = @ArtursGift,
           [CamilleGreetingComplete] = @CamilleGreeting,
           [ConnPotions]             = @ConnPotions,
           [CryptTerror]             = @CryptTerror,
           [CryptTerrorSlayed]       = @CryptTerrorSlayed,
           [Dar]                     = @Dar,
           [DarItem]                 = @DarItem,
           [EternalLove]             = @EternalLove,
           [FionaDance]              = @Fiona,
           [Keela]                   = @Keela,
           [KeelaCount]              = @KeelaCount,
           [KeelaKill]               = @KeelaKill,
           [KeelaQuesting]           = @KeelaQuesting,
           [KillerBee]               = @KillerBee,
           [Neal]                    = @Neal,
           [NealCount]               = @NealCount,
           [NealKill]                = @NealKill,
           [AbelShopAccess]          = @AbelShopAccess,
           [PeteKill]                = @PeteKill,
           [PeteComplete]            = @PeteComplete,
           [SwampAccess]             = @SwampAccess,
           [SwampCount]              = @SwampCount
    WHERE  Serial = @Serial;
END

GO
