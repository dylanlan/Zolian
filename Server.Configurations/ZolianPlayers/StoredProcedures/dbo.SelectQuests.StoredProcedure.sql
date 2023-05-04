USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[SelectQuests]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[SelectQuests]
GO
/****** Object:  StoredProcedure [dbo].[SelectQuests]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectQuests]
@Serial INT
AS
BEGIN
    SET NOCOUNT ON;
    SELECT TutorialCompleted,
           BetaReset,
           StoneSmithing,
           MilethReputation,
           ArtursGift,
           CamilleGreetingComplete,
           ConnPotions,
           CryptTerror,
           CryptTerrorSlayed,
           Dar,
           DarItem,
           DrunkenHabit,
           EternalLove,
           FionaDance,
           Keela,
           KeelaCount,
           KeelaKill,
           KeelaQuesting,
           KillerBee,
           Neal,
           NealCount,
           NealKill,
           AbelShopAccess,
           PeteKill,
           PeteComplete,
           SwampAccess,
           SwampCount
    FROM   [ZolianPlayers].[dbo].[PlayersQuests]
    WHERE  Serial = @Serial;
END

GO
