USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[AddLegendMark]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[AddLegendMark]
GO
/****** Object:  StoredProcedure [dbo].[AddLegendMark]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddLegendMark]
@LegendId INT, @Serial INT, @Category VARCHAR(20), @Time DATETIME,
@Color VARCHAR (25), @Icon INT, @Value VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;
    INSERT  INTO [ZolianPlayers].[dbo].[PlayersLegend]
	([LegendId], [Serial], [Category], [Time], [Color], [Icon], [Value])
    VALUES	(@LegendId, @Serial, @Category, @Time, @Color, @Icon, @Value);
END

GO
