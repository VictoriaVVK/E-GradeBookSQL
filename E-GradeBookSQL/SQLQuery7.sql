CREATE Procedure UpdateStudent
	@Id INT,
    @FullName NVARCHAR(100),
    @DateOfBirth DATE,
    @NumberInClass INT,
    @ClassId INT
As
Begin   
    Update Students
    Set
        FullName = @FullName,
        DateOfBirth = @DateOfBirth,
        NumberInClass = @NumberInClass,
        ClassId = @ClassId
        Where Id = @Id;
END;
Go

-- EXEC UpdateStudent 1, 'Ivan Petrov Updated', '2006-03-12', 10, 1;

-- Delete student by ID
CREATE PROCEDURE DeleteStudent
    @Id INT
AS
BEGIN
    DELETE FROM Students
    WHERE Id = @Id;
END;
GO

-- EXEC DeleteStudent 1;


CREATE PROCEDURE AddSubject
    @Name NVARCHAR(100),
    @TeacherFullName NVARCHAR(100),
    @RoomNumber NVARCHAR(10)
AS
BEGIN
    INSERT INTO Subjects (Name, TeacherFullName, RoomNumber)
    VALUES (@Name, @TeacherFullName, @RoomNumber);
END;
GO

-- EXEC AddSubject 'Physics', 'Mrs. Raykova', '202';

-- Edit subject by ID
CREATE PROCEDURE UpdateSubject
    @Id INT,
    @Name NVARCHAR(100),
    @TeacherFullName NVARCHAR(100),
    @RoomNumber NVARCHAR(10)
AS
BEGIN
    UPDATE Subjects
    SET 
        Name = @Name,
        TeacherFullName = @TeacherFullName,
        RoomNumber = @RoomNumber
    WHERE Id = @Id;
END;
GO

-- EXEC UpdateSubject 1, 'Biology Updated', 'Mr. Petrov', '104';


-- Delete subject by id
CREATE PROCEDURE DeleteSubject
    @Id INT
AS
BEGIN
    DELETE FROM Subjects
    WHERE Id = @Id;
END;
GO

-- EXEC DeleteSubject 3;


-- Edit grade by ID
CREATE PROCEDURE UpdateGrade
    @Id INT,
    @StudentId INT,
    @SubjectId INT,
    @Value FLOAT,
    @Date DATE
AS
BEGIN
    UPDATE Grades
    SET 
        StudentId = @StudentId,
        SubjectId = @SubjectId,
        Value = @Value,
        Date = @Date
    WHERE Id = @Id;
END;
GO

-- EXEC UpdateGrade 1, 1, 2, 4.25, '2024-11-01';

-- delete grade by ID
CREATE PROCEDURE DeleteGrade
    @Id INT
AS
BEGIN
    DELETE FROM Grades
    WHERE Id = @Id;
END;
GO

-- EXEC DeleteGrade 1;
