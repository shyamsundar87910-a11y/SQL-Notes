-- ===================== 01_SQL_BASICS.sql =====================


-- .........................Create Database.........................--

CREATE DATABASE company;


-- .........................Use Database.........................--

USE company;


-- .........................Create Table.........................--

CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    age INT,
    salary INT
);


-- .........................Insert Data.........................--

INSERT INTO employees VALUES
(1, 'Shyam', 21, 25000),
(2, 'Rahul', 22, 30000),
(3, 'Aman', 23, 28000),
(4, 'Ravi', 24, 35000);


-- .........................Select All Data.........................--

SELECT * FROM employees;


-- .........................Select Specific Columns.........................--

SELECT name, salary
FROM employees;


-- .........................Select Multiple Columns.........................--

SELECT name, age, salary
FROM employees;
