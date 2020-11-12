CREATE VIEW [dbo].[TotalStats]
	AS
	select RANK() OVER (Order By (Sum(pg.Goals) *2 + Sum(pg.Assists)) DESC ) 'Rank', p.Id, p.Name Player, s.Name School, s.Id SchoolId, Sum(pg.Goals) total_goals, Sum(pg.Assists) total_assists, (Sum(pg.Goals) *2 + Sum(pg.Assists)) total,
	Sum(pg.Goals)/CAST(Count(*) as float) Goals_Per_Game, Sum(case when pg.Goals > 0 then 1 else 0 end)/CAST(Count(*) as float) Percentage_Games_With_Goal
	from Player as p
	Inner Join Team as t on p.TeamId = t.Id
	inner join School as s on t.SchoolId = s.Id
	inner join PlayerGame as pg on p.Id = pg.PlayerId
	group by p.Id, p.Name, s.Name, s.Id

