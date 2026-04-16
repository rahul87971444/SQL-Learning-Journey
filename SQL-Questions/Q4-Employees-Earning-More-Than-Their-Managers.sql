-- Q4: Employees Earning More Than Their Managers
-- LeetCode SQL

SELECT e.name AS Employee
FROM Employee e
JOIN Employee m
ON e.managerId = m.id
WHERE e.salary > m.salary;

-- Concepts:
-- Self Join, Comparison
