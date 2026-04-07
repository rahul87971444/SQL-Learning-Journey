-- Insert sample data

USE CompanyDB;

INSERT INTO departments (dept_name)
VALUES ('HR'), ('IT'), ('Finance');

INSERT INTO employees (name, salary, dept_id)
VALUES
('Rahul', 50000, 1),
('Amit', 60000, 2),
('Neha', 55000, 2),
('Rohit', 70000, 3),
('Arav', 65000, 2);
