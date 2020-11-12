CREATE TABLE [dbo].[Player]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(50) NOT NULL, 
    [TeamId] INT NOT NULL, 
    [Year] INT NOT NULL, 
    [Position] VARCHAR(50) NULL, 
    CONSTRAINT [FK_Player_Team] FOREIGN KEY ([TeamId]) REFERENCES [Team]([Id])
)
