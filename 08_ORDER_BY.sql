-- ===================== 08_ORDER_BY.sql =====================


-- .........................Sort by Salary Ascending.........................--
SELECT *
FROM employees
ORDER BY salary ASC;


-- .........................Sort by Salary Descending.........................--
SELECT *
FROM employees
ORDER BY salary DESC;


-- .........................Sort by Age Ascending.........................--
SELECT *
FROM employees
ORDER BY age ASC;


-- .........................Sort by Age Descending.........................--
SELECT *
FROM employees
ORDER BY age DESC;


-- .........................Sort by Name.........................--
SELECT *
FROM employees
ORDER BY name ASC;


-- .........................Sort by Multiple Columns.........................--
SELECT *
FROM employees
ORDER BY age ASC, salary DESC;


-- .........................ORDER BY with WHERE.........................--
SELECT name, salary
FROM employees
WHERE salary > 28000
ORDER BY salary DESC;
