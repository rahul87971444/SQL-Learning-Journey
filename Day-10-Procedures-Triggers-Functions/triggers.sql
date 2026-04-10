-- Day 10: Trigger

USE CompanyDB;

-- Create log table
CREATE TABLE salary_log (
    emp_id INT,
    old_salary INT,
    new_salary INT
);

DELIMITER //

CREATE TRIGGER before_salary_update
BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO salary_log(emp_id, old_salary, new_salary)
    VALUES (OLD.emp_id, OLD.salary, NEW.salary);
END //

DELIMITER ;
