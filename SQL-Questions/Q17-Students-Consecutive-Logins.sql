SELECT DISTINCT s.name
FROM login l1
JOIN login l2
ON l1.studentid = l2.studentid
AND DATEDIFF(l2.logindate, l1.logindate) = 1
JOIN student s
ON s.studentid = l1.studentid;
