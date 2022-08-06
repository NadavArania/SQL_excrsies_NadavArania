USE University

-- Targil 1

SELECT * FROM Students

-- Targil 2

SELECT s.FirstName,s.LastName FROM Students s

-- Targil 3

SELECT DISTINCT s.FirstName FROM Students s

-- Targil 4

SELECT s.FirstName FROM Students s
WHERE s.Age < 80

-- Targil 5

SELECT * FROM Students s
WHERE s.Id = 1

-- Targil 6

SELECT s.Id FROM Students s
WHERE s.FirstName = 'Ami' AND s.LastName = 'Sason'

-- Targil 7

SELECT s.FirstName FROM Students s
WHERE s.FirstName = 'Ami' OR s.FirstName = 'Yael' AND s.Age > 20

-- Targil 8

SELECT * FROM Students s
WHERE s.Age IS NULL

-- Targil 9

SELECT * FROM Students s
WHERE s.Age IS NOT NULL

-- Targil 10

SELECT s.FirstName FROM Students s
ORDER BY s.FirstName ASC

-- Targil 11

SELECT * FROM Students s
ORDER BY s.Age DESC

-- Targil 12

SELECT TOP 2 * FROM Students s
ORDER BY s.Age DESC

-- Targil 13

SELECT * FROM Students s
WHERE s.FirstName LIKE 'A%' AND s.Age > 20
ORDER BY s.FirstName

-- Targil 14

INSERT INTO Courses (CourseName) VALUES ('Gaming')

-- Targil 15

UPDATE Students
SET Age = 70
WHERE Students.Age > 80

-- Targil 16

DELETE FROM Students
WHERE Students.Id = 4

-- Targil 17

SELECT cs.CourseId, c.CourseName, cs.StudentId, s.FirstName + ' ' + s.LastName AS FullName, cs.Grade FROM CoursesStudents cs 
LEFT JOIN Courses c ON cs.CourseId = c.Id
LEFT JOIN Students s ON cs.StudentId = s.Id

