USE PD_321

SELECT 
		[ФИО Студента]			= FORMATMESSAGE('%s %s %s', last_name, first_name, middle_name),
		[Направление обучения]	= direction_name
FROM	Students, Directions, Groups
WHERE	Students.[group] = Groups.group_id
AND		Groups.direction = Directions.direction_id