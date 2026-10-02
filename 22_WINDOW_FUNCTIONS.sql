-- ===================== 22_WINDOW_FUNCTIONS.sql =====================


-- .........................ROW_NUMBER.........................--
SELECT
    name,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_number
FROM employees;


-- .........................RANK.........................--
SELECT
    name,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;


-- .........................DENSE_RANK.........................--
SELECT
    name,
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rank
FROM employees;


-- .........................Window Function with PARTITION BY.........................--
SELECT
    name,
    age,
    salary,
    ROW_NUMBER() OVER (
        PARTITION BY age
        ORDER BY salary DESC
    ) AS row_number
FROM employees;


-- .........................Running Total.........................--
SELECT
    name,
    salary,
    SUM(salary) OVER (
        ORDER BY id
    ) AS running_total
FROM employees;


-- .........................Average Salary using Window Function.........................--
SELECT
    name,
    salary,
    AVG(salary) OVER () AS average_salary
FROM employees;


-- .........................Maximum Salary using Window Function.........................--
SELECT
    name,
    salary,
    MAX(salary) OVER () AS highest_salary
FROM employees;
