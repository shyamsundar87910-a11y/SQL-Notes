-- ===================== 07_DISTINCT.sql =====================


-- .........................Select Unique Ages.........................--
SELECT DISTINCT age
FROM employees;


-- .........................Select Unique Salaries.........................--
SELECT DISTINCT salary
FROM employees;


-- .........................Select Unique Names.........................--
SELECT DISTINCT name
FROM employees;


-- .........................Distinct with Multiple Columns.........................--
SELECT DISTINCT age, salary
FROM employees;


-- .........................Distinct with WHERE.........................--
SELECT DISTINCT age
FROM employees
WHERE salary > 28000;
