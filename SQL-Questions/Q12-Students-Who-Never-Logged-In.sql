-- Q12: Students who never logged in

SELECT s.name
FROM students s
LEFT JOIN logins l
ON s.id = l.student_id
WHERE l.student_id IS NULL;

-- Concepts:
-- LEFT JOIN, NULL handling
