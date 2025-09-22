CREATE DATABASE training_center;
USE training_center;
CREATE TABLE students_list (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    course VARCHAR(100),
    fees_paid INT,
    status VARCHAR(10));

INSERT INTO students_list (id, name, course, fees_paid, status) VALUES
(1, 'Alice', 'Web Development', 5000, 'Inactive'),
(2, 'Bob', 'Data Science', 7000, 'Inactive'),
(3, 'Charlie', 'UI/UX Design', 4000, 'Active');

SELECT * FROM students_list
WHERE fees_paid > 5000;

UPDATE students_list
SET status = 'Active'
WHERE course = 'Web Development';

UPDATE students_list
SET fees_paid = fees_paid + 1000
WHERE course = 'Data Science';

UPDATE students_list
SET status = 'Inactive', fees_paid = fees_paid - 500
WHERE id = 3;

DELETE FROM students_list
WHERE id = 2;

DELETE FROM students_list
WHERE status = 'Inactive';