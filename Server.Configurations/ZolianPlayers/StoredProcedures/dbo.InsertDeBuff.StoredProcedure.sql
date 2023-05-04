USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[InsertDeBuff]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[InsertDeBuff]
GO
/****** Object:  StoredProcedure [dbo].[InsertDeBuff]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertDeBuff]
@DebuffId INT, @Serial INT, @Name VARCHAR(30), @TimeLeft INT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT  INTO [ZolianPlayers].[dbo].[PlayersDeBuffs] ([DebuffId], [Serial], [Name], [TimeLeft])
    VALUES	(@DebuffId, @Serial, @Name, @TimeLeft);
END

GO
