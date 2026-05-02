SELECT name
FROM employee
WHERE salary = (SELECT MAX(salary) FROM employee);
