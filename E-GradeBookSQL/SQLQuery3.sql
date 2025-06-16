USE EGradebook;
GO

SELECT name, teacherFullName, roomNumber
FROM EGradebook.dbo.Subjects;

-- ???????? ?? ???????
INSERT INTO Students (fullName, dateOfBirth, numberInClass, classId)
VALUES
('Ivan Petrov', '2006-03-12', 1, 1),
('Maria Georgieva', '2006-05-27', 2, 1);

-- ???????? ?? ????????
INSERT INTO Subjects (name, teacherFullName, roomNumber)
VALUES
('Mathematics', 'Mrs. Kancheva', '101'),
('Biology', 'Mr. Stoyanov', '102');

-- ???????? ?? ??????
INSERT INTO Grades (studentId, subjectId, value, date)
VALUES
(1, 1, 5.50, '2024-10-10'),
(2, 2, 3.75, '2024-11-05');

-- ???????? ?? ????
INSERT INTO Classrooms (name, classTeacher)
VALUES
('12A', 'Mrs. Dimitrova');

INSERT INTO Subjects (Name, TeacherFullName, RoomNumber)
VALUES
('History', 'Mr. Ganchev', '103'),
('English', 'Ms. Krasteva', '104'),
('Chemistry', 'Dr. Stefanova', '105'),
('Physics', 'Mrs. Milena Yaneva', '106');



-- Georgi Stoyanov (ID 3)
INSERT INTO Grades (StudentId, SubjectId, Value, Date)
VALUES
(3, 1, 4.00, '2024-10-15'),
(3, 3, 3.50, '2024-11-01');

-- Elena Dimitrova (ID 4)
INSERT INTO Grades (StudentId, SubjectId, Value, Date)
VALUES
(4, 2, 5.75, '2024-10-20'),
(4, 4, 6.00, '2024-10-25');

-- Viktor Hristov (ID 5)
INSERT INTO Grades (StudentId, SubjectId, Value, Date)
VALUES
(5, 5, 2.50, '2024-10-10'),
(5, 3, 3.00, '2024-10-20');

-- Nikolay Vasilev (ID 6)
INSERT INTO Grades (StudentId, SubjectId, Value, Date)
VALUES
(6, 2, 4.00, '2024-09-22'),
(6, 6, 3.25, '2024-10-01');

-- Siyana Koleva (ID 7)
INSERT INTO Grades (StudentId, SubjectId, Value, Date)
VALUES
(7, 1, 6.00, '2024-09-15'),
(7, 4, 5.75, '2024-10-05');

-- Tsvetelina Marinova (ID 8)
INSERT INTO Grades (StudentId, SubjectId, Value, Date)
VALUES
(8, 2, 2.00, '2024-09-25'),
(8, 3, 2.50, '2024-10-03'),
(8, 5, 2.00, '2024-10-09');

