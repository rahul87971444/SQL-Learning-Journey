USE StudentDB;

-- View data (JOIN)
SELECT s.name, c.course_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;

--------------------------------------------------

-- Count students per course
SELECT c.course_name, COUNT(e.student_id) AS total_students
FROM courses c
LEFT JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_id;

--------------------------------------------------

-- Students enrolled in more than 1 course
SELECT student_id, COUNT(course_id) AS total_courses
FROM enrollments
GROUP BY student_id
HAVING COUNT(course_id) > 1;

--------------------------------------------------

-- Search student by name
SELECT * FROM students
WHERE name LIKE 'R%';
