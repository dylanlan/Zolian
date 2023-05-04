USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[CheckIfItemExists]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[CheckIfItemExists]
GO
/****** Object:  StoredProcedure [dbo].[CheckIfItemExists]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CheckIfItemExists] @Name NVARCHAR(45), @Serial INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM ZolianPlayers.dbo.PlayersBanked WHERE [Name] = @Name AND Serial = @Serial
END
GO
