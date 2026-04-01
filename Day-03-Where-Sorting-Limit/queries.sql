-- Day 03: SELECT, WHERE, Operators, Sorting & Limit

-- Assume table: students

-- 1. SELECT Query
-- Fetch all data
SELECT * FROM students;

-- Fetch specific columns
SELECT name, age FROM students;


-- 2. WHERE Clause
-- Filter data based on condition
SELECT * FROM students
WHERE age > 20;


-- 3. Comparison Operators
-- =, >, <, >=, <=, !=

SELECT * FROM students WHERE age = 20;
SELECT * FROM students WHERE age >= 21;
SELECT * FROM students WHERE age != 18;


-- 4. Logical Operators (AND, OR, NOT)

-- AND
SELECT * FROM students
WHERE age > 20 AND course = 'BCA';

-- OR
SELECT * FROM students
WHERE age = 20 OR course = 'BTECH';

-- NOT
SELECT * FROM students
WHERE NOT course = 'BCA';


-- 5. Sorting (ORDER BY)

-- Ascending (default)
SELECT * FROM students
ORDER BY age ASC;

-- Descending
SELECT * FROM students
ORDER BY age DESC;


-- 6. LIMIT (Restrict number of rows)

SELECT * FROM students
LIMIT 3;

-- Top 2 oldest students
SELECT * FROM students
ORDER BY age DESC
LIMIT 2;

-- Extra Concepts (Advanced Filtering)

-- LIKE
SELECT * FROM students WHERE name LIKE 'R%';

-- BETWEEN
SELECT * FROM students WHERE age BETWEEN 20 AND 22;

-- IN
SELECT * FROM students WHERE course IN ('BCA', 'BTECH');

-- NULL check
SELECT * FROM students WHERE email IS NOT NULL;

-- DISTINCT
SELECT DISTINCT course FROM students;

-- Alias
SELECT name AS student_name FROM students;


-- Concepts Covered:
-- SELECT, WHERE, Comparison Operators
-- Logical Operators (AND, OR, NOT)
-- ORDER BY (ASC, DESC)
-- LIMIT
-- Real-world use:
-- These queries are commonly used in filtering dashboards,
-- search systems, and backend APIs.
