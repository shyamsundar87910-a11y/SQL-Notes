-- ===================== 06_OPERATORS.sql =====================


-- .........................Equal To.........................--
SELECT *
FROM employees
WHERE salary = 30000;


-- .........................Not Equal To.........................--
SELECT *
FROM employees
WHERE salary <> 30000;


-- .........................Greater Than.........................--
SELECT *
FROM employees
WHERE salary > 30000;


-- .........................Less Than.........................--
SELECT *
FROM employees
WHERE salary < 30000;


-- .........................Greater Than or Equal To.........................--
SELECT *
FROM employees
WHERE salary >= 30000;


-- .........................Less Than or Equal To.........................--
SELECT *
FROM employees
WHERE salary <= 30000;


-- .........................AND Operator.........................--
SELECT *
FROM employees
WHERE age > 21
AND salary > 28000;


-- .........................OR Operator.........................--
SELECT *
FROM employees
WHERE age = 21
OR salary > 30000;


-- .........................NOT Operator.........................--
SELECT *
FROM employees
WHERE NOT age = 21;
