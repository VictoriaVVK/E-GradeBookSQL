USE EGradebook;
GO

-- AddStudent
CREATE PROCEDURE AddStudent
    @FullName NVARCHAR(100),
    @DateOfBirth DATE,
    @NumberInClass INT,
    @ClassId INT
AS
BEGIN
    INSERT INTO Students (FullName, DateOfBirth, NumberInClass, ClassId)
    VALUES (@FullName, @DateOfBirth, @NumberInClass, @ClassId);
END
GO

-- AddGrade
CREATE PROCEDURE AddGrade
    @StudentId INT,
    @SubjectId INT,
    @Value FLOAT,
    @GradeDate DATE
AS
BEGIN
    INSERT INTO Grades (StudentId, SubjectId, Value, Date)
    VALUES (@StudentId, @SubjectId, @Value, @GradeDate);
END
GO

-- GetAllStudents
CREATE PROCEDURE GetAllStudents
AS
BEGIN
    SELECT Id, FullName, DateOfBirth, NumberInClass, ClassId
    FROM Students;
END
GO
