USE StudentDB;

DELIMITER //

CREATE PROCEDURE get_student_courses(IN sid INT)
BEGIN
    SELECT s.name, c.course_name
    FROM students s
    JOIN enrollments e ON s.student_id = e.student_id
    JOIN courses c ON e.course_id = c.course_id
    WHERE s.student_id = sid;
END //

DELIMITER ;

-- Call
CALL get_student_courses(1);
