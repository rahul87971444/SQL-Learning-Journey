-- Day 08: Indexes

USE CompanyDB;

-- Create index
CREATE INDEX idx_name
ON employees(name);

-- Create unique index
CREATE UNIQUE INDEX idx_email
ON employees(email);

-- Show indexes
SHOW INDEX FROM employees;

-- Drop index
-- DROP INDEX idx_name ON employees;

-- Concepts Covered:
-- Indexing for faster search
