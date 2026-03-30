-- Day 01: Database & Table Creation

-- Create and use database
CREATE DATABASE rkydb;
USE rkydb;
-- Create Users Table
CREATE TABLE users (
    userID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    age INT CHECK (age > 18),
    username VARCHAR(50)
);
-- Create Department Table
CREATE TABLE department (
    deptID INT PRIMARY KEY AUTO_INCREMENT,
    deptNAME VARCHAR(50) NOT NULL
);
