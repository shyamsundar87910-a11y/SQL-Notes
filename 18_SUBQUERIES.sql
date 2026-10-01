-- ===================== 18_SUBQUERIES.sql =====================


-- .........................Subquery with WHERE.........................--
SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


-- .........................Employees with Maximum Salary.........................--
SELECT *
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);


-- .........................Employees with Minimum Salary.........................--
SELECT *
FROM employees
WHERE salary = (
    SELECT MIN(salary)
    FROM employees
);


-- .........................Subquery with IN.........................--
SELECT *
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE department_name = 'IT'
);


-- .........................Subquery with SELECT.........................--
SELECT
    name,
    salary,
    (SELECT AVG(salary) FROM employees) AS average_salary
FROM employees;


-- .........................Subquery with FROM.........................--
SELECT *
FROM (
    SELECT name, salary
    FROM employees
    WHERE salary > 28000
) AS high_salary_employees;
