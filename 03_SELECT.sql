-- ===================== 03_SELECT.sql =====================


-- .........................Select All Columns.........................--

SELECT *
FROM employees;


-- .........................Select One Column.........................--

SELECT name
FROM employees;


-- .........................Select Multiple Columns.........................--

SELECT name, age
FROM employees;


-- .........................Select Name and Salary.........................--

SELECT name, salary
FROM employees;


-- .........................Select Age and Salary.........................--

SELECT age, salary
FROM employees;


-- .........................Column Alias.........................--

SELECT name AS employee_name
FROM employees;


-- .........................Multiple Column Aliases.........................--

SELECT
    name AS employee_name,
    salary AS monthly_salary
FROM employees;


-- .........................Calculated Column.........................--

SELECT
    name,
    salary,
    salary * 12 AS annual_salary
FROM employees;


-- .........................Select with Calculation.........................--

SELECT
    name,
    age + 1 AS next_age
FROM employees;
