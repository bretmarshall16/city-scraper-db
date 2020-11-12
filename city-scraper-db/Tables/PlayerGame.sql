CREATE TABLE [dbo].[PlayerGame]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [PlayerId] INT NOT NULL, 
    [GameId] INT NOT NULL, 
    [Goals] INT NULL, 
    [Assists] INT NULL, 
    CONSTRAINT [FK_PlayerGame_Player] FOREIGN KEY ([PlayerId]) REFERENCES [Player]([Id]),
	CONSTRAINT [FK_PlayerGame_Game] FOREIGN KEY ([GameId]) REFERENCES [Game]([Id])
)
