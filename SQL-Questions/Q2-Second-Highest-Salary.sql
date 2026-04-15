-- Q2: Second Highest Salary
-- LeetCode SQL

SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);

-- Concepts:
-- Subquery, MAX function, Filtering
