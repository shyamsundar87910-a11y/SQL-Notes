-- ===================== 04_INSERT.sql =====================


-- .........................Insert One Row.........................--

INSERT INTO employees (id, name, age, salary)
VALUES (5, 'Priya', 22, 27000);


-- .........................Insert Multiple Rows.........................--

INSERT INTO employees (id, name, age, salary)
VALUES
(6, 'Sneha', 23, 32000),
(7, 'Amit', 21, 29000),
(8, 'Neha', 24, 36000);


-- .........................View Inserted Data.........................--

SELECT *
FROM employees;


-- .........................Insert Selected Columns.........................--

INSERT INTO employees (id, name)
VALUES (9, 'Karan');


-- .........................Check Specific Data.........................--

SELECT id, name, age, salary
FROM employees;
