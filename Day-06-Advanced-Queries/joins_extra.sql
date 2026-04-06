-- Day 06: Self Join & Cross Join

-- Self Join Example (Employee-Manager)
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

INSERT INTO employee VALUES
(1, 'Rahul', NULL),
(2, 'Amit', 1),
(3, 'Neha', 1);

-- SELF JOIN
SELECT e.name AS employee, m.name AS manager
FROM employee e
LEFT JOIN employee m
ON e.manager_id = m.emp_id;

-- CROSS JOIN (all combinations)
SELECT s.name, d.dept_name
FROM students s
CROSS JOIN department d;

-- Concepts Covered:
-- Self Join, Cross Join
