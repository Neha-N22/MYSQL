
CREATE DATABASE college;
USE college
CREATE TABLE students (
    id INT AUTO_INCREMENT ,
    studentname VARCHAR(50),
    age INT,
    department VARCHAR(50),
    grade INT);

INSERT INTO students VALUES('1','Neha','23','ECE','70');
INSERT INTO students VALUES('2','Anjana','23','EEE','90');
INSERT INTO students VALUES('3','Amal','27','CSE','80');
INSERT INTO students VALUES('4','Arun','25','ECE','80');


SELECT * FROM students
WHERE age > 20;

SELECT * FROM `students` 
WHERE department = 'CSE' OR 'Physics';

SELECT * FROM 'students'
WHERE GRADE = 90;

SELECT * FROM `students` 
WHERE grade BETWEEN 70 AND 90;


