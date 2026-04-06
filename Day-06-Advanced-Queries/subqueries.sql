-- Day 06: Subqueries

USE CompanyDB;

-- Students older than average age
SELECT name, age
FROM students
WHERE age > (SELECT AVG(age) FROM students);

-- Students in department with id = 1
SELECT name
FROM students
WHERE dept_id IN (
    SELECT dept_id FROM department WHERE dept_id = 1
);

-- EXISTS example
SELECT name
FROM students s
WHERE EXISTS (
    SELECT 1 FROM department d
    WHERE s.dept_id = d.dept_id
);

-- Concepts Covered:
-- Subqueries, IN, EXISTS
