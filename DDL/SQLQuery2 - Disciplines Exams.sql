USE PD_321_SQL

--CREATE TABLE Disciplines
--(
--	discipline_id		SMALLINT PRIMARY KEY IDENTITY(1,1),
--	discipline_name		NVARCHAR(50) NOT NULL,
--	number_of_lessons	TINYINT NOT NULL
--)

--CREATE TABLE DisciplinesDirectionsRelation
--(
--	discipline	SMALLINT CONSTRAINT FK_DisciplinesDirectionsRelation_Disciplines FOREIGN KEY REFERENCES Disciplines (discipline_id),
--	direction	TINYINT CONSTRAINT FK_DisciplinesDirectionsRelation_Directions FOREIGN KEY REFERENCES Directions (direction_id),
--	PRIMARY KEY (discipline, direction)
--)

--CREATE TABLE RequiredDisciplines
--(
--	discipline			SMALLINT CONSTRAINT FK_RequiredDisciplines_Disciplines_1	FOREIGN KEY REFERENCES Disciplines (discipline_id),
--	required_discipline	SMALLINT CONSTRAINT FK_RequiredDisciplines_Disciplines_2	FOREIGN KEY REFERENCES Disciplines (discipline_id),
--	PRIMARY KEY (discipline, required_discipline)
--)

--CREATE TABLE DependentDisciplines
--(
--	discipline				SMALLINT CONSTRAINT FK_DependentDisciplines_Disciplines_1	FOREIGN KEY REFERENCES Disciplines (discipline_id),
--	dependent_discipline	SMALLINT CONSTRAINT FK_DependentDisciplines_Disciplines_2	FOREIGN KEY REFERENCES Disciplines (discipline_id),
--	PRIMARY KEY (discipline, dependent_discipline)
--)

--CREATE TABLE TeachersDisciplinesRelation
--(
--	teacher		SMALLINT CONSTRAINT FK_TeachersDisciplinesRelation_Teachers FOREIGN KEY REFERENCES Teachers (teacher_id),
--	discipline	SMALLINT CONSTRAINT FK_TeachersDisciplinesRelation_Disciplines FOREIGN KEY REFERENCES Disciplines (discipline_id),
--	PRIMARY KEY (teacher, discipline)
--)

--CREATE TABLE CompleteDisciplines
--(
--	[group]		INT CONSTRAINT FK_CompleteDisciplines_Groups FOREIGN KEY REFERENCES Groups (group_id),
--	discipline	SMALLINT CONSTRAINT FK_CompleteDisciplines_Disciplines FOREIGN KEY REFERENCES Disciplines (discipline_id),
--	PRIMARY KEY ([group], discipline)
--)

--CREATE TABLE Exams
--(
--	student		INT CONSTRAINT FK_Exams_Students FOREIGN KEY REFERENCES Students (stud_id),
--	discipline	SMALLINT CONSTRAINT FK_Exams_Disciplines FOREIGN KEY REFERENCES Disciplines (discipline_id),
--	date		DATE NOT NULL,
--	grade		TINYINT NOT NULL CONSTRAINT CK_EXAM_GRADE CHECK (grade>0 AND grade<=12),
--	PRIMARY KEY (student, discipline)
--)