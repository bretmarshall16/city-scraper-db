CREATE TABLE [dbo].[Team]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [SchoolId] INT NOT NULL, 
    [SportId] INT NOT NULL, 
    CONSTRAINT [FK_Team_School] FOREIGN KEY ([SchoolId]) REFERENCES [School]([Id]),
	CONSTRAINT [FK_Team_League] FOREIGN KEY ([SportId]) REFERENCES [Sport]([Id])
)
