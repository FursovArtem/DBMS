use PD_321

select
		[����������] = discipline_name,
		[�����������] = direction_name
from Disciplines, Directions, DisciplinesDirectionsRelation
where	DisciplinesDirectionsRelation.direction = Directions.direction_id
and		DisciplinesDirectionsRelation.discipline = Disciplines.discipline_id
and		Directions.direction_name like ('%web%')