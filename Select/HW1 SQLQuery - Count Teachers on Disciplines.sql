use PD_321

--select
--		[����������] = discipline_name,
--		[���������� ��������������] = count(teacher_id)
--from Teachers, Disciplines, TeachersDisciplinesRelation
--where teacher = teacher_id
--and discipline = discipline_id
--group by discipline_name
--order by [���������� ��������������] desc

select
		[����������] = discipline_name,
		[���������� ��������������] = count(teacher_id)
from TeachersDisciplinesRelation
join teachers on (teacher = teacher_id)
right join disciplines on (discipline = discipline_id)
group by discipline_name
having count(teacher_id) <= 2
order by count(teacher_id) desc