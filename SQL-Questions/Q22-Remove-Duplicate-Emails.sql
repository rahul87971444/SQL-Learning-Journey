-- Q22: Remove duplicate emails (keep smallest id)

DELETE p1
FROM Person p1
JOIN Person p2
ON p1.email = p2.email
AND p1.id > p2.id;

-- Concepts:
-- Self JOIN, DELETE, duplicates handling
