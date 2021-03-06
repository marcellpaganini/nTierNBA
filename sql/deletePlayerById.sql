USE [nba]
GO

CREATE OR ALTER   procedure [dbo].[DeletePlayerById]
@PlayerId INT

AS

BEGIN

	IF NOT EXISTS(SELECT * FROM player WHERE PlayerId = @PlayerId)
		THROW 51000, 'The player you are trying to delete does not exist.', 1;

	DELETE FROM Player WHERE PlayerId = @PlayerId;

END;

