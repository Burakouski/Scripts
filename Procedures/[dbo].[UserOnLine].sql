USE [MessagingSystem]
GO
/****** Object:  StoredProcedure [dbo].[UserOnLine]    Script Date: 01/05/2018 18:38:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[UserOnLine]
@IdUser int
AS
/*
		dbo.UserOnLine 2
*/

BEGIN

	UPDATE dbo.Users
	SET DateLastOnline = getdate()
	where IdUser = @IdUser

END
