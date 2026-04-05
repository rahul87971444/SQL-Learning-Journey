-- Day 05: GROUP BY & HAVING

USE CompanyDB;

-- Group students by department
SELECT dept_id, COUNT(*) AS total_students
FROM students
GROUP BY dept_id;

-- Average age per department
SELECT dept_id, AVG(age) AS avg_age
FROM students
GROUP BY dept_id;

-- HAVING (filter groups)

-- Departments with more than 1 student
SELECT dept_id, COUNT(*) AS total_students
FROM students
GROUP BY dept_id
HAVING COUNT(*) > 1;

-- Departments with avg age > 20
SELECT dept_id, AVG(age) AS avg_age
FROM students
GROUP BY dept_id
HAVING AVG(age) > 20;


-- Concepts Covered:
-- GROUP BY, HAVING, Aggregate Functions
