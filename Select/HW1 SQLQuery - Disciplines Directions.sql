use PD_321

select
		[Дисциплина] = discipline_name,
		[Направление] = direction_name
from Disciplines, Directions, DisciplinesDirectionsRelation
where	DisciplinesDirectionsRelation.direction = Directions.direction_id
and		DisciplinesDirectionsRelation.discipline = Disciplines.discipline_id
and		Directions.direction_name like ('%web%')