-- ===================== 09_LIMIT.sql =====================


-- .........................Limit Number of Rows.........................--
SELECT *
FROM employees
LIMIT 5;


-- .........................First 3 Employees.........................--
SELECT *
FROM employees
LIMIT 3;


-- .........................Top 5 Highest Salaries.........................--
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;


-- .........................Top 3 Youngest Employees.........................--
SELECT *
FROM employees
ORDER BY age ASC
LIMIT 3;


-- .........................LIMIT with Specific Columns.........................--
SELECT name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;


-- .........................LIMIT with WHERE.........................--
SELECT *
FROM employees
WHERE salary > 28000
ORDER BY salary DESC
LIMIT 2;
