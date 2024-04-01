USE PD_321

SELECT
	last_name + ' ' + first_name + ' ' + middle_name	AS 'ФИО преподавателя',
	discipline_name										AS 'Дисциплина'
FROM Teachers, Disciplines, TeachersDisciplinesRelation
WHERE	TeachersDisciplinesRelation.teacher = Teachers.teacher_id
AND		TeachersDisciplinesRelation.discipline = Disciplines.discipline_id
AND		Teachers.last_name = 'Покидюк'