SELECT s.name
FROM student s
JOIN (
    SELECT DISTINCT studentid, loginid
    FROM login) l
ON s.studentid = l.studentid
GROUP BY s.studentid, s.name
HAVING COUNT(l.loginid) = 1;
