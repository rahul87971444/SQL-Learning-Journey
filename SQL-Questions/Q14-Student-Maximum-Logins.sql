SELECT s.name, COUNT(l.student_id) AS login_count
FROM students s
JOIN logins l
ON s.id = l.student_id
GROUP BY s.id, s.name
ORDER BY login_count DESC
LIMIT 1;
