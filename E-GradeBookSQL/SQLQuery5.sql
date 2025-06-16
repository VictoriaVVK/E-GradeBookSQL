SELECT * FROM Students;
SELECT * FROM Subjects;

--All Grades
SELECT
	s.FullName AS Student,
	sub.Name AS Subject,
	g.Value AS Grade,
	g.Date
FROM Grades g
JOIN Students s ON g.StudentId = s.Id
JOIN Subjects sub ON g.SubjectId= sub.Id;

--Average grade (subject)
SELECT 
	s.FullName,
	sub.Name AS Subject,
	AVG(g.Value) AS AvgGrade
FROM Grades g
JOIN Students s ON g.StudentId = s.Id
JOIN Subjects sub ON g.SubjectId = sub.Id
GROUP BY s.FullName, sub.Name;

--Average grad (at all)
SELECT 
    s.FullName,
    AVG(g.Value) AS AvgGrade
FROM Grades g
JOIN Students s ON g.StudentId = s.Id
GROUP BY s.FullName;

--Above 5.50
SELECT
	s.FullName,
	AVG(g.Value) AS AvgGrade
FROM Grades g
JOIN Students s ON g.StudentId = s.Id
GROUP BY s.FullName
HAVING AVG(g.Value)> 5.50;

--Under 3.00
SELECT 
    s.FullName,
    sub.Name AS Subject,
    g.Value
FROM Grades g
JOIN Students s ON g.StudentId = s.Id
JOIN Subjects sub ON g.SubjectId = sub.Id
WHERE g.Value < 3;

--Birthday party
SELECT
	FullName,
	DateOfBirth
From Students
Where day(DateOfBirth) = day(getdate())
and month(DateOfBirth) = month(getdate());