CREATE PROCEDURE my_sp_select_group_from_schedule
@group_name NVARCHAR(10)
AS
SELECT
		lesson_id,
		[Группа] = group_name,
		[Дисциплина] = discipline_name,
		[Преподаватель] = FORMATMESSAGE('%s %s %s', last_name, first_name, middle_name),
		[День недели] = DATENAME(WEEKDAY, [Schedule].[date]),
		[Дата] = [Schedule].[date],
		[Время] = [Schedule].[time],
		[Статус] = IIF([Schedule].spent = 1, 'Проведено', 'Запланировано'),
		[Номер занятия] = number_of_lesson,
		[Тема занятия] = subject_of_lesson
FROM Schedule
JOIN groups ON ([group] = group_id)
JOIN disciplines ON (discipline = discipline_id)
JOIN teachers ON (teacher = teacher_id)
WHERE group_name = @group_name