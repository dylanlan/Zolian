USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[PlayerSecurity]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[PlayerSecurity]
GO
/****** Object:  StoredProcedure [dbo].[PlayerSecurity]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PlayerSecurity] @Name NVARCHAR(12)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Serial, Username, [Password], PasswordAttempts, Hacked, CurrentMapId FROM ZolianPlayers.dbo.Players WHERE Username = @Name
END
GO
