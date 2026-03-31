-- Day 02: Table Creation (Student Database)

CREATE DATABASE StudentDb;
USE StudentDb;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    age INT CHECK (age >= 18),
    course VARCHAR(50) DEFAULT 'BCA'
);
