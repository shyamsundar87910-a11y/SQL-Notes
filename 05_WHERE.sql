-- ===================== 05_WHERE.sql =====================


-- .........................WHERE with Salary.........................--
SELECT *
FROM employees
WHERE salary > 30000;


-- .........................WHERE with Age.........................--
SELECT *
FROM employees
WHERE age = 21;


-- .........................Salary Greater Than or Equal.........................--
SELECT *
FROM employees
WHERE salary >= 30000;


-- .........................Age Less Than.........................--
SELECT *
FROM employees
WHERE age < 23;


-- .........................Salary Not Equal.........................--
SELECT *
FROM employees
WHERE salary <> 25000;


-- .........................WHERE with Name.........................--
SELECT *
FROM employees
WHERE name = 'Shyam';


-- .........................WHERE with Specific Columns.........................--
SELECT name, salary
FROM employees
WHERE salary > 28000;
