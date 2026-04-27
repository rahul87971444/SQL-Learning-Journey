SELECT s.name, COUNT(l.loginid) AS login_count
FROM student s
JOIN login l
ON s.studentid = l.studentid
GROUP BY s.studentid, s.name
HAVING COUNT(l.loginid) = 1;
