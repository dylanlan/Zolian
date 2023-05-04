USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[CheckIfPlayerHashExists]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[CheckIfPlayerHashExists]
GO
/****** Object:  StoredProcedure [dbo].[CheckIfPlayerHashExists]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CheckIfPlayerHashExists] @Name NVARCHAR(12), @Serial INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Username FROM ZolianPlayers.dbo.Players WHERE Username = @Name AND Serial = @Serial
END
GO
