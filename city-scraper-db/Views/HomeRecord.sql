CREATE VIEW [dbo].[HomeRecord]
	AS 
	select s.name, HomeTeamId, Sum(case when HomeTeamScore > AwayTeamScore then 1 else 0 end) 'Wins', Sum(case when HomeTeamScore = AwayTeamScore then 1 else 0 end) 'Ties', Sum(case when HomeTeamScore < AwayTeamScore then 1 else 0 end) 'Losses', SUM(HomeTeamScore) as 'home_scored', SUM(AwayTeamScore) as 'home_on', Count(*) 'Total' from Game as g
	inner join team as t on g.HomeTeamId = t.Id
	inner join school as s on t.SchoolId = s.Id
	group by 
	HomeTeamId,
	s.name
