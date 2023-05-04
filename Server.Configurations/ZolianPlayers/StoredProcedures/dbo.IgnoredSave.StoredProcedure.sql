USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[IgnoredSave]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[IgnoredSave]
GO
/****** Object:  StoredProcedure [dbo].[IgnoredSave]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[IgnoredSave]
@Id INT, @Serial INT, @PlayerIgnored VARCHAR(12)
AS
BEGIN
    SET NOCOUNT ON;
    INSERT  INTO [ZolianPlayers].[dbo].[PlayersIgnoreList] ([Id], [Serial], [PlayerIgnored])
    VALUES (@Id, @Serial, @PlayerIgnored);
END

GO
