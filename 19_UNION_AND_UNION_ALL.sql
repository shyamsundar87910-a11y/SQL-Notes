-- ===================== 19_UNION_AND_UNION_ALL.sql =====================


-- .........................Create Second Employee Table.........................--
CREATE TABLE old_employees (
    id INT,
    name VARCHAR(50),
    age INT,
    salary INT
);


-- .........................Insert Data.........................--
INSERT INTO old_employees VALUES
(10, 'Rohit', 25, 30000),
(11, 'Kunal', 26, 32000),
(12, 'Pooja', 24, 28000);


-- .........................UNION.........................--
SELECT name
FROM employees

UNION

SELECT name
FROM old_employees;


-- .........................UNION ALL.........................--
SELECT name
FROM employees

UNION ALL

SELECT name
FROM old_employees;


-- .........................UNION with Multiple Columns.........................--
SELECT name, salary
FROM employees

UNION

SELECT name, salary
FROM old_employees;


-- .........................UNION ALL with Multiple Columns.........................--
SELECT name, salary
FROM employees

UNION ALL

SELECT name, salary
FROM old_employees;
