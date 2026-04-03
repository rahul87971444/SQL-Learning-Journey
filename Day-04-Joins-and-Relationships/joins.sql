USE CompanyDB;

-- INNER JOIN (only matching records)
SELECT s.name, d.dept_name
FROM students s
INNER JOIN department d
ON s.dept_id = d.dept_id;

-- LEFT JOIN (all students + matching departments)
SELECT s.name, d.dept_name
FROM students s
LEFT JOIN department d
ON s.dept_id = d.dept_id;

-- RIGHT JOIN (all departments + matching students)
SELECT s.name, d.dept_name
FROM students s
RIGHT JOIN department d
ON s.dept_id = d.dept_id;

-- Concepts Covered:
-- INNER JOIN, LEFT JOIN, RIGHT JOIN
