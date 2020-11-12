CREATE TABLE [dbo].[League]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(50) NOT NULL, 
    [Abbreviation] VARCHAR(50) NOT NULL, 
    [Site] VARCHAR(MAX) NULL
)
