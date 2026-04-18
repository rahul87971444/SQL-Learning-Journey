-- Q5: Employees with salary greater than average (department-wise)

SELECT e.name, e.salary, e.dept_id
FROM employees e
JOIN (
    SELECT dept_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY dept_id
) d
ON e.dept_id = d.dept_id
WHERE e.salary > d.avg_salary;

-- Concepts:
-- JOIN, GROUP BY, AVG, Subquery
