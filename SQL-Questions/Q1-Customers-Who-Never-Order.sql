-- Q1: Customers Who Never Order
-- LeetCode SQL

SELECT c.name
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customerId
WHERE o.customerId IS NULL;

-- Concepts:
-- LEFT JOIN, NULL handling
