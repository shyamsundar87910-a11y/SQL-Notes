-- ===================== 10_NULL_VALUES.sql =====================


-- .........................Check NULL Values.........................--
SELECT *
FROM employees
WHERE age IS NULL;


-- .........................Check NULL Salary.........................--
SELECT *
FROM employees
WHERE salary IS NULL;


-- .........................Check NOT NULL Values.........................--
SELECT *
FROM employees
WHERE age IS NOT NULL;


-- .........................Check NOT NULL Salary.........................--
SELECT *
FROM employees
WHERE salary IS NOT NULL;


-- .........................Select Employees with NULL Data.........................--
SELECT name, age, salary
FROM employees
WHERE age IS NULL
OR salary IS NULL;


-- .........................Select Employees with Complete Data.........................--
SELECT name, age, salary
FROM employees
WHERE age IS NOT NULL
AND salary IS NOT NULL;
