SELECT d.department_name,COUNT(e.id) AS total_employees
FROM employee e
JOIN department d
ON e.department_id = d.id
GROUP BY d.department_name;
