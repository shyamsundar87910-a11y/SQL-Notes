-- ===================== 24_RANK.sql =====================


-- .........................RANK by Salary Descending.........................--
SELECT
    name,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;


-- .........................RANK by Salary Ascending.........................--
SELECT
    name,
    salary,
    RANK() OVER (ORDER BY salary ASC) AS salary_rank
FROM employees;


-- .........................RANK by Age.........................--
SELECT
    name,
    age,
    RANK() OVER (ORDER BY age ASC) AS age_rank
FROM employees;


-- .........................RANK with PARTITION BY Age.........................--
SELECT
    name,
    age,
    salary,
    RANK() OVER (
        PARTITION BY age
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;


-- .........................RANK with Department.........................--
SELECT
    name,
    department_id,
    salary,
    RANK() OVER (
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;
