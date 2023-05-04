USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[SelectEquipped]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[SelectEquipped]
GO
/****** Object:  StoredProcedure [dbo].[SelectEquipped]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectEquipped] @Serial INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM ZolianPlayers.dbo.PlayersEquipped WHERE Serial = @Serial
END
GO
