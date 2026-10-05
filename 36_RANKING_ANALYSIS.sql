-- ===================== 36_RANKING_ANALYSIS.sql =====================


-- .........................Rank Employees by Salary.........................--
SELECT
    name,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;


-- .........................Dense Rank Employees by Salary.........................--
SELECT
    name,
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;


-- .........................Row Number by Salary.........................--
SELECT
    name,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_number
FROM employees;


-- .........................Top 3 Employees.........................--
SELECT
    name,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;


-- .........................Department Wise Ranking.........................--
SELECT
    name,
    department_id,
    salary,
    RANK() OVER (
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS department_rank
FROM employees;


-- .........................Top Employee in Each Department.........................--
WITH ranked_employees AS (
    SELECT
        name,
        department_id,
        salary,
        RANK() OVER (
            PARTITION BY department_id
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employees
)
SELECT
    name,
    department_id,
    salary
FROM ranked_employees
WHERE salary_rank = 1;


-- .........................Salary Difference from Highest Salary.........................--
SELECT
    name,
    salary,
    MAX(salary) OVER () - salary AS difference_from_highest
FROM employees;


-- .........................Running Total of Salary.........................--
SELECT
    name,
    salary,
    SUM(salary) OVER (
        ORDER BY id
    ) AS running_total
FROM employees;
