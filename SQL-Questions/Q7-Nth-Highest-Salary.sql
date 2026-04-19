-- Q7: Nth Highest Salary
-- LeetCode SQL

SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET N-1;

-- Replace N with required number (e.g., 2 for second highest)

-- Concepts:
-- DISTINCT, ORDER BY, LIMIT, OFFSET
