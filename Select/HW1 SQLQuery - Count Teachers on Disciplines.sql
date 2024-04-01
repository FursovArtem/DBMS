use PD_321

--select
--		[Дисциплина] = discipline_name,
--		[Количество преподавателей] = count(teacher_id)
--from Teachers, Disciplines, TeachersDisciplinesRelation
--where teacher = teacher_id
--and discipline = discipline_id
--group by discipline_name
--order by [Количество преподавателей] desc

select
		[Дисциплина] = discipline_name,
		[Количество преподавателей] = count(teacher_id)
from TeachersDisciplinesRelation
join teachers on (teacher = teacher_id)
right join disciplines on (discipline = discipline_id)
group by discipline_name
having count(teacher_id) <= 2
order by count(teacher_id) desc