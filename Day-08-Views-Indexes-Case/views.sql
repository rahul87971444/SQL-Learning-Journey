-- Day 08: Views

USE CompanyDB;

-- Create a view
CREATE VIEW employee_view AS
SELECT name, salary
FROM employees;

-- Fetch data from view
SELECT * FROM employee_view;

-- Update view (recreate)
CREATE OR REPLACE VIEW employee_view AS
SELECT name, salary, dept_id
FROM employees;

-- Drop view
-- DROP VIEW employee_view;

-- Concepts Covered:
-- View creation, usage, modification
