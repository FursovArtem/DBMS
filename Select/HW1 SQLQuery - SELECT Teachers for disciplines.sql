use pd_321

select
		[�������������] = formatmessage('%s %s %s', last_name, first_name, middle_name),
		[����������] = discipline_name
from	Teachers, Disciplines, TeachersDisciplinesRelation
where	TeachersDisciplinesRelation.teacher		= Teachers.teacher_id
and		TeachersDisciplinesRelation.discipline	= Disciplines.discipline_id
--and		Disciplines.discipline_name LIKE ('%SQL%')
--and			Disciplines.discipline_name LIKE ('%[A-z]%')