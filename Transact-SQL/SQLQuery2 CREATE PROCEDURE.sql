CREATE PROCEDURE my_sp_select_group_from_schedule
@group_name NVARCHAR(10)
AS
SELECT
		lesson_id,
		[������] = group_name,
		[����������] = discipline_name,
		[�������������] = FORMATMESSAGE('%s %s %s', last_name, first_name, middle_name),
		[���� ������] = DATENAME(WEEKDAY, [Schedule].[date]),
		[����] = [Schedule].[date],
		[�����] = [Schedule].[time],
		[������] = IIF([Schedule].spent = 1, '���������', '�������������'),
		[����� �������] = number_of_lesson,
		[���� �������] = subject_of_lesson
FROM Schedule
JOIN groups ON ([group] = group_id)
JOIN disciplines ON (discipline = discipline_id)
JOIN teachers ON (teacher = teacher_id)
WHERE group_name = @group_name