use PD_321

select
		[����������� ��������] = direction_name,
		[���������� ���������] = count(stud_id)
from Students, Groups, Directions
where students.[group] = groups.group_id
and groups.direction = directions.direction_id
group by direction_name