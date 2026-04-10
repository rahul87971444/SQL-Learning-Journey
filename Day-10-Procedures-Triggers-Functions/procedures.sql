-- Day 10: Stored Procedure

USE CompanyDB;

DELIMITER //

CREATE PROCEDURE get_employees_by_dept(IN dept INT)
BEGIN
    SELECT * FROM employees
    WHERE dept_id = dept;
END //

DELIMITER ;

-- Call procedure
CALL get_employees_by_dept(2);
