USE [nba]
GO


CREATE OR ALTER PROCEDURE [dbo].[RetrievePlayerByPlayerId] 
@PlayerId INT

AS
BEGIN

SET NOCOUNT ON;

If NOT EXISTS (SELECT * FROM Player WHERE PlayerId = @PlayerId)  
			BEGIN
				DECLARE @Error nvarchar(100)
				SET @Error = 'Player Id ' + CONVERT(nvarchar(9), @PlayerId) + ' does not exist.';
				THROW 51005, @Error, 1
			END	 

SELECT PlayerId, FirstName, LastName, Active, BirthDate, Salary, Player.TeamId, RecordVersion FROM Player
	WHERE PlayerId = @PlayerId;

END