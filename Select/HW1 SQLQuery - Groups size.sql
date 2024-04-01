use PD_321

select
		[Группа] = group_name,
		[Количество студентов] = count(stud_id)
from	Groups, Students
where	Students.[group] = groups.group_id
group by group_name			--Если была применена функция агрегирования,
							--то обязательно нужно сделать группировку данных
--having count(stud_id) > 10
order by [Количество студентов] desc		--descending - в порядке убывания