CREATE VIEW [dbo].[AwayRecord]
	AS
	select s.name, AwayTeamId, Sum(case when HomeTeamScore < AwayTeamScore then 1 else 0 end) 'Wins', Sum(case when HomeTeamScore = AwayTeamScore then 1 else 0 end) 'Ties', Sum(case when HomeTeamScore > AwayTeamScore then 1 else 0 end) 'Losses', SUM(HomeTeamScore) as 'away_on', SUM(AwayTeamScore) as 'away_scored' ,Count(*) 'Total' from Game as g
	inner join team as t on g.AwayTeamId = t.Id
	inner join school as s on t.SchoolId = s.Id
	group by 
	AwayTeamId,
	s.name
