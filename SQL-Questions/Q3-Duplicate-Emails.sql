-- Q3: Duplicate Emails
-- LeetCode SQL

SELECT email
FROM Person
GROUP BY email
HAVING COUNT(email) > 1;

-- Concepts:
-- GROUP BY, HAVING, COUNT
