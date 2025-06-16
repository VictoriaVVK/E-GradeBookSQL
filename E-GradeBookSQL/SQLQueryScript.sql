------ FULL PROJECT SCRIPT: structure, data, procedures (all commented)


--USE EGradebook;
--GO

--SELECT name, teacherFullName, roomNumber
--FROM EGradebook.dbo.Subjects;


--INSERT INTO Students (fullName, dateOfBirth, numberInClass, classId)
--VALUES
--('Ivan Petrov', '2006-03-12', 1, 1),
--('Maria Georgieva', '2006-05-27', 2, 1);


--INSERT INTO Subjects (name, teacherFullName, roomNumber)
--VALUES
--('Mathematics', 'Mrs. Kancheva', '101'),
--('Biology', 'Mr. Stoyanov', '102');


--INSERT INTO Grades (studentId, subjectId, value, date)
--VALUES
--(1, 1, 5.50, '2024-10-10'),
--(2, 2, 3.75, '2024-11-05');


--INSERT INTO Classrooms (name, classTeacher)
--VALUES
--('12A', 'Mrs. Dimitrova');

--INSERT INTO Subjects (Name, TeacherFullName, RoomNumber)
--VALUES
--('History', 'Mr. Ganchev', '103'),
--('English', 'Ms. Krasteva', '104'),
--('Chemistry', 'Dr. Stefanova', '105'),
--('Physics', 'Mrs. Milena Yaneva', '106');


--USE EGradebook;
--GO

---- AddStudent
--CREATE PROCEDURE AddStudent
--    @FullName NVARCHAR(100),
--    @DateOfBirth DATE,
--    @NumberInClass INT,
--    @ClassId INT
--AS
--BEGIN
--    INSERT INTO Students (FullName, DateOfBirth, NumberInClass, ClassId)
--    VALUES (@FullName, @DateOfBirth, @NumberInClass, @ClassId);
--END
--GO

---- AddGrade
--CREATE PROCEDURE AddGrade
--    @StudentId INT,
--    @SubjectId INT,
--    @Value FLOAT,
--    @GradeDate DATE
--AS
--BEGIN
--    INSERT INTO Grades (StudentId, SubjectId, Value, Date)
--    VALUES (@StudentId, @SubjectId, @Value, @GradeDate);
--END
--GO

---- GetAllStudents
--CREATE PROCEDURE GetAllStudents
--AS
--BEGIN
--    SELECT Id, FullName, DateOfBirth, NumberInClass, ClassId
--    FROM Students;
--END
--GO

--CREATE Procedure UpdateStudent
--	@Id INT,
--    @FullName NVARCHAR(100),
--    @DateOfBirth DATE,
--    @NumberInClass INT,
--    @ClassId INT
--As
--Begin   
--    Update Students
--    Set
--        FullName = @FullName,
--        DateOfBirth = @DateOfBirth,
--        NumberInClass = @NumberInClass,
--        ClassId = @ClassId
--        Where Id = @Id;
--END;
--Go

---- EXEC UpdateStudent 1, 'Ivan Petrov Updated', '2006-03-12', 10, 1;

---- Delete student by ID
--CREATE PROCEDURE DeleteStudent
--    @Id INT
--AS
--BEGIN
--    DELETE FROM Students
--    WHERE Id = @Id;
--END;
--GO

---- EXEC DeleteStudent 1;


--CREATE PROCEDURE AddSubject
--    @Name NVARCHAR(100),
--    @TeacherFullName NVARCHAR(100),
--    @RoomNumber NVARCHAR(10)
--AS
--BEGIN
--    INSERT INTO Subjects (Name, TeacherFullName, RoomNumber)
--    VALUES (@Name, @TeacherFullName, @RoomNumber);
--END;
--GO

---- EXEC AddSubject 'Physics', 'Mrs. Raykova', '202';

---- Edit subject by ID
--CREATE PROCEDURE UpdateSubject
--    @Id INT,
--    @Name NVARCHAR(100),
--    @TeacherFullName NVARCHAR(100),
--    @RoomNumber NVARCHAR(10)
--AS
--BEGIN
--    UPDATE Subjects
--    SET 
--        Name = @Name,
--        TeacherFullName = @TeacherFullName,
--        RoomNumber = @RoomNumber
--    WHERE Id = @Id;
--END;
--GO

---- EXEC UpdateSubject 1, 'Biology Updated', 'Mr. Petrov', '104';


---- Delete subject by id
--CREATE PROCEDURE DeleteSubject
--    @Id INT
--AS
--BEGIN
--    DELETE FROM Subjects
--    WHERE Id = @Id;
--END;
--GO

---- EXEC DeleteSubject 3;


---- Edit grade by ID
--CREATE PROCEDURE UpdateGrade
--    @Id INT,
--    @StudentId INT,
--    @SubjectId INT,
--    @Value FLOAT,
--    @Date DATE
--AS
--BEGIN
--    UPDATE Grades
--    SET 
--        StudentId = @StudentId,
--        SubjectId = @SubjectId,
--        Value = @Value,
--        Date = @Date
--    WHERE Id = @Id;
--END;
--GO

---- EXEC UpdateGrade 1, 1, 2, 4.25, '2024-11-01';

---- delete grade by ID
--CREATE PROCEDURE DeleteGrade
--    @Id INT
--AS
--BEGIN
--    DELETE FROM Grades
--    WHERE Id = @Id;
--END;
--GO

---- EXEC DeleteGrade 1;



--SELECT * FROM Students;
--SELECT * FROM Subjects;

----All Grades
--SELECT
--	s.FullName AS Student,
--	sub.Name AS Subject,
--	g.Value AS Grade,
--	g.Date
--FROM Grades g
--JOIN Students s ON g.StudentId = s.Id
--JOIN Subjects sub ON g.SubjectId= sub.Id;

----Average grade (subject)
--SELECT 
--	s.FullName,
--	sub.Name AS Subject,
--	AVG(g.Value) AS AvgGrade
--FROM Grades g
--JOIN Students s ON g.StudentId = s.Id
--JOIN Subjects sub ON g.SubjectId = sub.Id
--GROUP BY s.FullName, sub.Name;

----Average grad (at all)
--SELECT 
--    s.FullName,
--    AVG(g.Value) AS AvgGrade
--FROM Grades g
--JOIN Students s ON g.StudentId = s.Id
--GROUP BY s.FullName;

----Above 5.50
--SELECT
--	s.FullName,
--	AVG(g.Value) AS AvgGrade
--FROM Grades g
--JOIN Students s ON g.StudentId = s.Id
--GROUP BY s.FullName
--HAVING AVG(g.Value)> 5.50;

----Under 3.00
--SELECT 
--    s.FullName,
--    sub.Name AS Subject,
--    g.Value
--FROM Grades g
--JOIN Students s ON g.StudentId = s.Id
--JOIN Subjects sub ON g.SubjectId = sub.Id
--WHERE g.Value < 3;

----Birthday party
--SELECT
--	FullName,
--	DateOfBirth
--From Students
--Where day(DateOfBirth) = day(getdate())
--and month(DateOfBirth) = month(getdate());

