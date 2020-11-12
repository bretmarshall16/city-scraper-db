CREATE TABLE [dbo].[Game]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [HomeTeamId] INT NOT NULL, 
    [AwayTeamId] INT NOT NULL, 
    [Date] DATE NOT NULL, 
    [HomeTeamScore] INT NULL, 
    [AwayTeamScore] INT NULL, 
    CONSTRAINT [FK_Game_Team_Home] FOREIGN KEY ([HomeTeamId]) REFERENCES [Team]([Id]),
	CONSTRAINT [FK_Game_Team_Away] FOREIGN KEY ([AwayTeamId]) REFERENCES [Team]([Id])
)
