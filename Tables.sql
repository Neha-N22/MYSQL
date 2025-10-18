CREATE DATABASE OnlineCourse;
USE OnlineCourse;
CREATE TABLE students (
    student_id INT PRIMARY KEY,            
    name VARCHAR(100) NOT NULL,           
    email VARCHAR(100) NOT NULL UNIQUE    
);
CREATE TABLE courses (
    course_id INT PRIMARY KEY,            
    course_name VARCHAR(100) NOT NULL      
);
CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

