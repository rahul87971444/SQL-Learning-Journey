-- Q13: Students who logged in more than once

SELECT s.name, COUNT(l.student_id) AS login_count
FROM students s
JOIN logins l
ON s.id = l.student_id
GROUP BY s.id, s.name
HAVING COUNT(l.student_id) > 1;

-- Concepts:
-- JOIN, GROUP BY, HAVING, COUNT
