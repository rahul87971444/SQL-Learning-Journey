USE CompanyDB;

-- 1. Employees with department names (JOIN)
SELECT e.name, e.salary, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

--------------------------------------------------

-- 2. Employees earning more than average salary (SUBQUERY)
SELECT name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary) FROM employees
);

--------------------------------------------------

-- 3. Count employees in each department (GROUP BY)
SELECT dept_id, COUNT(*) AS total_employees
FROM employees
GROUP BY dept_id;

--------------------------------------------------

-- 4. Departments having more than 1 employee (HAVING)
SELECT dept_id, COUNT(*) AS total_employees
FROM employees
GROUP BY dept_id
HAVING COUNT(*) > 1;

--------------------------------------------------

-- 5. Top 2 highest paid employees (ORDER BY + LIMIT)
SELECT name, salary
FROM employees
ORDER BY salary DESC
LIMIT 2;
