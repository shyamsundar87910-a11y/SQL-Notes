-- ===================== 37_GROWTH_ANALYSIS.sql =====================


-- .........................Salary Growth.........................--
SELECT
    name,
    salary,
    LAG(salary) OVER (
        ORDER BY id
    ) AS previous_salary,
    salary - LAG(salary) OVER (
        ORDER BY id
    ) AS salary_growth
FROM employees;


-- .........................Salary Growth Percentage.........................--
SELECT
    name,
    salary,
    LAG(salary) OVER (
        ORDER BY id
    ) AS previous_salary,
    ROUND(
        (
            (salary - LAG(salary) OVER (ORDER BY id)) * 100.0
        ) / NULLIF(LAG(salary) OVER (ORDER BY id), 0),
        2
    ) AS growth_percentage
FROM employees;


-- .........................Growth from Highest Salary.........................--
SELECT
    name,
    salary,
    MAX(salary) OVER () - salary AS difference_from_highest
FROM employees;


-- .........................Department Wise Salary Growth.........................--
SELECT
    name,
    department_id,
    salary,
    LAG(salary) OVER (
        PARTITION BY department_id
        ORDER BY id
    ) AS previous_salary,
    salary - LAG(salary) OVER (
        PARTITION BY department_id
        ORDER BY id
    ) AS salary_growth
FROM employees;


-- .........................Positive Salary Growth.........................--
WITH salary_growth AS (
    SELECT
        name,
        salary,
        salary - LAG(salary) OVER (
            ORDER BY id
        ) AS growth
    FROM employees
)
SELECT *
FROM salary_growth
WHERE growth > 0;


-- .........................Average Growth.........................--
WITH salary_growth AS (
    SELECT
        salary - LAG(salary) OVER (
            ORDER BY id
        ) AS growth
    FROM employees
)
SELECT AVG(growth) AS average_growth
FROM salary_growth;
