USE [nba]
GO

CREATE OR ALTER   PROCEDURE [dbo].[TeamsLookup] 
AS
BEGIN

SET NOCOUNT ON;

SELECT teamId, TeamName FROM Team
ORDER BY TeamName;

END