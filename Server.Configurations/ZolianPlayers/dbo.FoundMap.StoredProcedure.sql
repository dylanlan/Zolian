USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[FoundMap]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[FoundMap]
GO
/****** Object:  StoredProcedure [dbo].[FoundMap]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FoundMap]
@DiscoveredId INT, @Serial INT, @MapId INT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT  INTO [ZolianPlayers].[dbo].[PlayersDiscoveredMaps] ([DiscoveredId], [Serial], [MapId])
    VALUES (@DiscoveredId, @Serial, @MapId);
END

GO
