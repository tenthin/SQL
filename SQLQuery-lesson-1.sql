SELECT * FROM [Order Details]  JOIN [Order Details] ON Orders.orderid = [Order details].orderid

CREATE TABLE Students(StudentsID int PRIMARY KEY, name varchar(10), age int)
CREATE TABLE courses(StudentsID int FOREIGN KEY REFERENCES Students(StudentsID), courseID int PRIMARY KEY, coursename varchar(20))


INSERT INTO Students VALUES (1, 'tsewang', 27)
INSERT INTO Students VALUES (2, 'thinley', 29)
INSERT INTO Students VALUES (3, 'gyurmey', 31)
INSERT INTO Students VALUES (4, 'pala', 58)
INSERT INTO Students VALUES (5, 'amala', 54)
 
 drop table Students
  drop table courses

  DELETE FROM courses

INSERT INTO courses VALUES (1, 11,'english')
INSERT INTO courses VALUES (2, 22,'tibetan')
INSERT INTO courses VALUES (3, 33,'geography')
INSERT INTO courses VALUES (2, 44,'pol science')
INSERT INTO courses VALUES (1, 55,'history')
INSERT INTO courses VALUES (4, 66,'AI')

SELECT * FROM Students
SELECT * FROM courses
SELECT * FROM Students INNER JOIN Courses ON Students.studentsID = courses.studentsID
SELECT * FROM Students LEFT JOIN Courses ON Students.studentsID = courses.studentsID
SELECT * FROM Students RIGHT JOIN Courses ON Students.studentsID = courses.studentsID
SELECT * FROM Students FULL OUTER JOIN Courses ON Students.studentsID = courses.studentsID