USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[InsertBuff]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[InsertBuff]
GO
/****** Object:  StoredProcedure [dbo].[InsertBuff]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertBuff]
@BuffId INT, @Serial INT, @Name VARCHAR(30), @TimeLeft INT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT  INTO [ZolianPlayers].[dbo].[PlayersBuffs] ([BuffId], [Serial], [Name], [TimeLeft])
    VALUES	(@BuffId, @Serial, @Name, @TimeLeft);
END

GO
