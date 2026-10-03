-- ===================== 26_LAG_AND_LEAD.sql =====================


-- .........................LAG.........................--
SELECT
    name,
    salary,
    LAG(salary) OVER (
        ORDER BY salary
    ) AS previous_salary
FROM employees;


-- .........................LEAD.........................--
SELECT
    name,
    salary,
    LEAD(salary) OVER (
        ORDER BY salary
    ) AS next_salary
FROM employees;


-- .........................LAG with Difference.........................--
SELECT
    name,
    salary,
    salary - LAG(salary) OVER (
        ORDER BY salary
    ) AS salary_difference
FROM employees;


-- .........................LEAD with Difference.........................--
SELECT
    name,
    salary,
    LEAD(salary) OVER (
        ORDER BY salary
    ) - salary AS salary_difference
FROM employees;


-- .........................LAG with PARTITION BY.........................--
SELECT
    name,
    department_id,
    salary,
    LAG(salary) OVER (
        PARTITION BY department_id
        ORDER BY salary
    ) AS previous_salary
FROM employees;


-- .........................LEAD with PARTITION BY.........................--
SELECT
    name,
    department_id,
    salary,
    LEAD(salary) OVER (
        PARTITION BY department_id
        ORDER BY salary
    ) AS next_salary
FROM employees;
