SELECT e.name
FROM employee e
LEFT JOIN department d
ON e.department_id = d.id
WHERE d.id IS NULL;
