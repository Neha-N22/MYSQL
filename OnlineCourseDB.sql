CREATE DATABASE OnlineCourseDB;
USE OnlineCourseDB;

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    course VARCHAR(50),
    score INT,
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50),
    bonus_points INT
);

INSERT INTO students (id, name, course, score, email, phone, city, bonus_points) VALUES
(1, 'Asha', 'Python', 85, 'asha@mail.com', '9876543210', 'Chennai', 5),
(2, 'Ravi', 'Python', 90, 'ravi@mail.com', '9876543211', 'Chennai', NULL),
(3, 'Sneha', 'Java', 78, 'sneha@mail.com', '9876543212', 'Mumbai', NULL),
(4, 'Karan', 'Java', 88, 'karan@mail.com', '9876543213', 'Delhi', 2),
(5, 'Divya', 'Python', 95, 'divya@mail.com', '9876543214', 'Mumbai', 4),
(6, 'Manoj', 'JavaScript', 72, 'manoj@mail.com', '9876543215', 'Delhi', NULL);

SELECT * FROM students;

SELECT course, COUNT(*) AS total_students
FROM students
GROUP BY course;

SELECT course, AVG(score) AS average_score
FROM students
GROUP BY course
HAVING AVG(score) > 80;

SELECT name, score
FROM students
WHERE city IN ('Chennai', 'Mumbai');

SELECT *
FROM students
WHERE bonus_points IS NULL;

SELECT name FROM students WHERE city = 'Chennai'
UNION
SELECT name FROM students WHERE city = 'Mumbai';
