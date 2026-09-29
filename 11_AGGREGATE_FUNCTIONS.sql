-- ===================== 11_AGGREGATE_FUNCTIONS.sql =====================


-- .........................COUNT.........................--
SELECT COUNT(*) AS total_employees
FROM employees;


-- .........................SUM.........................--
SELECT SUM(salary) AS total_salary
FROM employees;


-- .........................AVG.........................--
SELECT AVG(salary) AS average_salary
FROM employees;


-- .........................MAX.........................--
SELECT MAX(salary) AS highest_salary
FROM employees;


-- .........................MIN.........................--
SELECT MIN(salary) AS lowest_salary
FROM employees;


-- .........................COUNT Specific Column.........................--
SELECT COUNT(salary) AS employees_with_salary
FROM employees;


-- .........................Multiple Aggregate Functions.........................--
SELECT
    COUNT(*) AS total_employees,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary
FROM employees;
