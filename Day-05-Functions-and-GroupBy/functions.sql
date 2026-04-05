
-- =========================
-- 1. STRING FUNCTIONS
-- =========================

-- Convert to uppercase
SELECT UPPER(name) FROM students;

-- Convert to lowercase
SELECT LOWER(name) FROM students;

-- Length of string
SELECT LENGTH(name) FROM students;

-- Concatenate strings
SELECT CONCAT(name, ' - Student') FROM students;

-- Substring
SELECT SUBSTRING(name, 1, 3) FROM students;


-- =========================
-- 2. NUMBER FUNCTIONS
-- =========================

-- Absolute value
SELECT ABS(-10);

-- Round value
SELECT ROUND(4.6);

-- Ceiling (next highest integer)
SELECT CEIL(4.2);

-- Floor (next lowest integer)
SELECT FLOOR(4.8);

-- Power
SELECT POWER(2,3);


-- =========================
-- 3. AGGREGATE FUNCTIONS
-- =========================

-- Count total rows
SELECT COUNT(*) FROM students;

-- Average age
SELECT AVG(age) FROM students;

-- Maximum age
SELECT MAX(age) FROM students;

-- Minimum age
SELECT MIN(age) FROM students;

-- Sum of ages
SELECT SUM(age) FROM students;


-- Concepts Covered:
-- String Functions, Number Functions, Aggregate Functions
