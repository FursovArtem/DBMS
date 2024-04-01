use PD_321

if not exists
(
select [group], discipline, teacher, [date], [time], spent
from Schedule
join groups on ([group] = group_id)
join disciplines on (discipline = discipline_id)
join teachers on (teacher = teacher_id)
)
begin
insert into Schedule
		([group], discipline, teacher, [date], [time], spent)
values 
(
		(select group_id from groups where group_name = 'PD_321'),
		(select discipline_id from disciplines where discipline_name like ('%MS SQL Server%')),
		(select teacher_id from teachers where first_name = 'Олег'),
		getdate(),
		'13:30',
		1
)
end

select 
		lesson_id,
		[Группа] = group_name,
		[Дисциплина] = discipline_name,
		[Преподаватель] = formatmessage('%s %s %s', last_name, first_name, middle_name),
		[Дата] = [Schedule].[date],
		[Время] = [Schedule].[time],
		[Статус] = iif([Schedule].spent = 1, 'Проведено', 'Запланировано')
from Schedule
join groups on ([group] = group_id)
join disciplines on (discipline = discipline_id)
join teachers on (teacher = teacher_id)