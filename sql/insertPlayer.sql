USE [nba]
GO


CREATE OR ALTER PROCEDURE [dbo].[InsertPlayer] 
@PlayerIdOut INT OUTPUT,
@FirstName VARCHAR(50),
@LastName VARCHAR(50),
@Active BIT,
@BirthDate DATETIME2,
@Salary DECIMAL(19,0),
@TeamId INT = NULL

AS
BEGIN

DECLARE @Error nvarchar(100)
SET @Error = 'The player ' + CONVERT(nvarchar(9), @FirstName) + ' ' + CONVERT(nvarchar(9), @LastName) + ' already exists.';

IF EXISTS(SELECT * FROM Player WHERE FirstName = @FirstName AND LastName = @LastName AND TeamId = @TeamId)
	THROW 51001, @Error, 1

INSERT INTO Player
	(FirstName, LastName, Active, BirthDate, Salary, TeamId)
VALUES
	(@FirstName, @LastName, @Active, @BirthDate, @Salary, @TeamId);

SET @PlayerIdOut = SCOPE_IDENTITY()

END
