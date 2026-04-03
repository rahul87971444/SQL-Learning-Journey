-- Day 04: Insert Sample Data

USE CompanyDB;

-- Insert into department
INSERT INTO department (dept_name)
VALUES 
('CSE'),
('ECE'),
('IT');

-- Insert into students
INSERT INTO students (name, dept_id)
VALUES
('Rahul', 1),
('Amit', 2),
('Neha', 1),
('Rohit', NULL);

-- View Data
SELECT * FROM department;
SELECT * FROM students;
