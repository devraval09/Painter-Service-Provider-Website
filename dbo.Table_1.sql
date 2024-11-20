CREATE TABLE [dbo].[Users]
(
	[userId] INT NOT NULL PRIMARY KEY, 
    [userName] VARCHAR(50) NOT NULL, 
    [userPassword] VARCHAR(50) NOT NULL, 
    [userNumber] INT NULL, 
    [userBirthdate] DATE NULL, 
    [userGender] TEXT NULL, 
    [userEmail] UNIQUEIDENTIFIER NULL
)
