CREATE VIEW [dbo].[TotalRecord]
	AS 
	select aw.name, aw.AwayTeamId, aw.Wins + hw.Wins 'Wins', aw.Ties + hw.Ties 'Ties', aw.Losses + hw.Losses 'Loses', aw.away_scored + hw.home_scored 'Goals_for', aw.away_on + hw.home_on 'Goals_against'  from AwayRecord as aw
	inner join HomeRecord as hw on aw.AwayTeamId = hw.HomeTeamId 
