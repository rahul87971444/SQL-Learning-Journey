USE StudentDB;

-- Log table
CREATE TABLE student_log (
    student_id INT,
    action VARCHAR(50)
);

DELIMITER //

CREATE TRIGGER after_student_insert
AFTER INSERT ON students
FOR EACH ROW
BEGIN
    INSERT INTO student_log(student_id, action)
    VALUES (NEW.student_id, 'INSERTED');
END //

DELIMITER ;
