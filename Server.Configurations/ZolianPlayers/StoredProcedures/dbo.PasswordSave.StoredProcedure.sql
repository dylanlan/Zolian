USE [ZolianPlayers]
GO
/****** Object:  StoredProcedure [dbo].[PasswordSave]    Script Date: 5/4/2023 1:28:31 AM ******/
DROP PROCEDURE [dbo].[PasswordSave]
GO
/****** Object:  StoredProcedure [dbo].[PasswordSave]    Script Date: 5/4/2023 1:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PasswordSave]
@Name VARCHAR (12), @Pass VARCHAR (8), @Attempts INT, @Hacked BIT, @LastIP VARCHAR (15), @LastAttemptIP VARCHAR (15)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [ZolianPlayers].[dbo].[Players]
    SET    [Password]         = @Pass,
           [PasswordAttempts] = @Attempts,
           [Hacked]           = @Hacked,
           [LastIP]           = @LastIP,
           [LastAttemptIP]    = @LastAttemptIP
    WHERE  Username = @Name;
END

GO
