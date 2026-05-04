-- Q21: Employees earning above average salary

SELECT name, salary
FROM employee
WHERE salary > (
    SELECT AVG(salary)
    FROM employee
);

-- Concepts:
-- AVG, Subquery, WHERE
