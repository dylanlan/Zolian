USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[DeBuffSave]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[DeBuffSave]
GO
/****** Object:  StoredProcedure [dbo].[DeBuffSave]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeBuffSave]
@Serial INT, @Name VARCHAR(30), @TimeLeft INT
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [ZolianPlayers].[dbo].[PlayersDebuffs]
    SET
	[TimeLeft] = @TimeLeft
    WHERE  Serial = @Serial AND [Name] = @Name;
END

GO
