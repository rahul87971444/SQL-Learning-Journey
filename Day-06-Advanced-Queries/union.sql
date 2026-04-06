
-- Create sample tables
CREATE TABLE students_a (
    name VARCHAR(50)
);

CREATE TABLE students_b (
    name VARCHAR(50)
);

INSERT INTO students_a VALUES ('Rahul'), ('Amit');
INSERT INTO students_b VALUES ('Neha'), ('Rahul');

-- UNION (removes duplicates)
SELECT name FROM students_a
UNION
SELECT name FROM students_b;

-- UNION ALL (keeps duplicates)
SELECT name FROM students_a
UNION ALL
SELECT name FROM students_b;

-- Concepts Covered:
-- UNION vs UNION ALL
