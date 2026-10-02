-- ===================== 25_DENSE_RANK.sql =====================


-- .........................DENSE_RANK by Salary Descending.........................--
SELECT
    name,
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;


-- .........................DENSE_RANK by Salary Ascending.........................--
SELECT
    name,
    salary,
    DENSE_RANK() OVER (ORDER BY salary ASC) AS salary_rank
FROM employees;


-- .........................DENSE_RANK by Age.........................--
SELECT
    name,
    age,
    DENSE_RANK() OVER (ORDER BY age ASC) AS age_rank
FROM employees;


-- .........................DENSE_RANK with PARTITION BY Age.........................--
SELECT
    name,
    age,
    salary,
    DENSE_RANK() OVER (
        PARTITION BY age
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;


-- .........................DENSE_RANK with Department.........................--
SELECT
    name,
    department_id,
    salary,
    DENSE_RANK() OVER (
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;
