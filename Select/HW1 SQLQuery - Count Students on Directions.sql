use PD_321

select
		[Направление обучения] = direction_name,
		[Количество студентов] = count(stud_id)
from Students, Groups, Directions
where students.[group] = groups.group_id
and groups.direction = directions.direction_id
group by direction_name