-- Day 08: CASE Statement

USE CompanyDB;

-- Categorize employees based on salary
SELECT name, salary,
CASE
    WHEN salary >= 65000 THEN 'High Salary'
    WHEN salary >= 55000 THEN 'Medium Salary'
    ELSE 'Low Salary'
END AS salary_category
FROM employees;

-- Concepts Covered:
-- Conditional logic using CASE
