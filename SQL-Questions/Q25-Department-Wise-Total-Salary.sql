SELECT d.name, SUM(e.salary) AS total_salary
FROM employee e
JOIN department d
ON e.deptid = d.id
GROUP BY d.name;
