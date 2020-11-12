CREATE TABLE [dbo].[ScraperSummary]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [StartTime] DATETIME NOT NULL, 
    [EndTime] DATETIME NOT NULL, 
    [Data] VARCHAR(MAX) NULL, 
    [PlayerCount] INT NULL
)
