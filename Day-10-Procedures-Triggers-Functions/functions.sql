-- Day 10: Functions

USE CompanyDB;

DELIMITER //

CREATE FUNCTION get_bonus(salary INT)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN salary * 0.10;
END //

DELIMITER ;

-- Use function
SELECT name, salary, get_bonus(salary) AS bonus
FROM employees;
