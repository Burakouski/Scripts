USE [MessagingSystem]
GO
/****** Object:  StoredProcedure [dbo].[SendMessage]    Script Date: 01/05/2018 18:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SendMessage]

@IdUserSender int,
@IdUserRecipient int,
@Message varchar(max)

AS
/*
	список всех пользователей

	dbo.ListUsers
	
*/
BEGIN

insert into dbo.MessagesV(IdUserSender, IdUserRecipient, Message)
VALUES(@IdUserSender, @IdUserRecipient, @Message)
		

END
