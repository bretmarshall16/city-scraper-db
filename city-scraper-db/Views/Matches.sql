CREATE VIEW [dbo].[Matches]
	AS 
	select g.date, hs.Name as 'home', g.HomeTeamScore, g.AwayTeamScore, aws.Name as 'away'
	FROM Game as g
	Inner Join Team as ht on HomeTeamId = ht.Id
	inner join School as hs on ht.SchoolId = hs.Id
	inner join team as awt on AwayTeamId = awt.Id
	inner join School as aws on awt.SchoolId = aws.Id

