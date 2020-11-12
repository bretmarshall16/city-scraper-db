CREATE TABLE [dbo].[MergeSummary]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [StartTime] DATETIME NOT NULL, 
    [EndTime] DATETIME NOT NULL, 
    [NewPlayerCount] INT NOT NULL
)
