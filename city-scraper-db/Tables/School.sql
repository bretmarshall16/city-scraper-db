CREATE TABLE [dbo].[School]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(50) NOT NULL, 
    [LeagueId] INT NULL, 
    CONSTRAINT [FK_School_League] FOREIGN KEY ([LeagueId]) REFERENCES [League]([Id])
)
