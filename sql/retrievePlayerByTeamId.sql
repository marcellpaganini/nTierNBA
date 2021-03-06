USE [nba]
GO

CREATE OR ALTER   PROCEDURE [dbo].[RetrievePlayerByTeamId] 
@TeamId INT

AS
BEGIN

SET NOCOUNT ON;

SELECT PlayerId, FirstName, LastName, BirthDate, Salary, TeamName, Arena, ConfName FROM Player
	INNER JOIN Team ON Team.TeamId = Player.TeamId AND Team.TeamId = @TeamId
	INNER JOIN Conference ON Conference.ConferenceId = Team.ConferenceId;

END