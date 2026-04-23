-- Q11: Students who logged in

SELECT DISTINCT s.name
FROM students s
JOIN logins l
ON s.id = l.student_id;

-- Concepts:
-- INNER JOIN, DISTINCT
