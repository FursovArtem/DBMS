USE PD_321_SQL

--CREATE TABLE Schedule
--(
--	lesson_id	BIGINT PRIMARY KEY IDENTITY(1,1),
--	[group]		INT NOT NULL CONSTRAINT FK_Schedule_Groups FOREIGN KEY REFERENCES Groups (group_id),
--	discipline	SMALLINT NOT NULL CONSTRAINT FK_Schedule_Disciplines FOREIGN KEY REFERENCES Disciplines (discipline_id),
--	teacher		SMALLINT NOT NULL CONSTRAINT FK_Schedule_Teachers FOREIGN KEY REFERENCES Teachers (teacher_id),
--	date		DATE,
--	time		TIME(0),
--	spent		BIT
--)

--CREATE TABLE Attendance
--(
--	student		INT CONSTRAINT FK_Attendance_Students FOREIGN KEY REFERENCES Students (stud_id),
--	lesson		BIGINT CONSTRAINT FK_Attendance_Schedule FOREIGN KEY REFERENCES Schedule (lesson_id),
--	present		BIT,
--	PRIMARY KEY (student, lesson)
--)

--CREATE TABLE Grades
--(
--	student		INT CONSTRAINT FK_Grades_Students FOREIGN KEY REFERENCES Students (stud_id),
--	lesson		BIGINT CONSTRAINT FK_Grades_Schedule FOREIGN KEY REFERENCES Schedule (lesson_id),
--	grade_1		TINYINT CONSTRAINT CK_GRADE_1 CHECK (grade_1>0 AND grade_1<=12),
--	grade_2		TINYINT CONSTRAINT CK_GRADE_2 CHECK (grade_2>0 AND grade_2<=12),
--	PRIMARY KEY (student, lesson)
--)