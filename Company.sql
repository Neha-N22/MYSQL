CREATE DATABASE Company;
USE Company;

CREATE TABLE Employee (
    id INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    `Leave` INT
);

INSERT INTO Employee (id, Name, Department, `Leave`) 
VALUES (1, 'Raju', 'Sales', 1),
       (2, 'Sangeetha', 'Sales', 3),
       (3, 'Vinay', 'Operations', 8),
       (4, 'Abey', 'Packing', 2),
       (5, 'Thomas', 'Packing', 1),
       (6, 'Muneer', 'Operations', 7),
       (7, 'Aparna', 'Sales', 3),
       (8, 'Abid', 'Operations', 9),
       (9, 'Fathima', 'Sales', 11),
       (10, 'Varghese', 'Operations', 14);

CREATE TABLE Exam (
id INT PRIMARY KEY,
Employee_id INT,
exam_status VARCHAR(10),
FOREIGN KEY (Employee_id) REFERENCES Employee(id)
);

INSERT INTO Exam (id, Employee_id, exam_status) 
VALUES (1, 2, 'Pass'),
       (2, 5, 'Fail'),
       (3, 1, 'Fail'),
       (4, 8, 'Pass'),
       (5, 3, 'Pass'),
       (6, 1, 'Pass'),
       (7, 6, 'Fail'),
       (8, 9, 'Pass'),
       (9, 10, 'Pass');

-- 1. Query to get the list of employees who took more than 5 leaves and are in the 'Sales' department.     
SELECT Name 
FROM Employee 
WHERE Department = 'Sales' AND `Leave` > 5;

--2. Query to get the number of employees working in operations department.
SELECT COUNT(*) AS Number_of_Employees 
FROM Employee 
WHERE Department = 'Operations';

--3. Query to get the count of employees working in each department. 
SELECT Department, COUNT(*) AS Employee_Count
FROM Employee
GROUP BY Department;

--4. Query to list the departments where all its employee altogether took more than 10 leaves.
SELECT Department
FROM Employee
GROUP BY Department
HAVING SUM(`Leave`) > 10;

--5. Query to list all the employee names who have passed the exam.
SELECT E.Name
FROM Employee E
JOIN Exam Ex ON E.id = Ex.Employee_id
WHERE Ex.exam_status = 'Pass';  

--6. Query to list all employee names who have not attended the exam.
SELECT Name
FROM Employee
WHERE id NOT IN (SELECT Employee_id FROM Exam);
