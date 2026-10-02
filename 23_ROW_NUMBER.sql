-- ===================== 23_ROW_NUMBER.sql =====================


-- .........................ROW_NUMBER by Salary.........................--
SELECT
    name,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_number
FROM employees;


-- .........................ROW_NUMBER by Salary Ascending.........................--
SELECT
    name,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary ASC) AS row_number
FROM employees;


-- .........................ROW_NUMBER with Age.........................--
SELECT
    name,
    age,
    salary,
    ROW_NUMBER() OVER (
        ORDER BY age ASC
    ) AS row_number
FROM employees;


-- .........................ROW_NUMBER with PARTITION BY.........................--
SELECT
    name,
    age,
    salary,
    ROW_NUMBER() OVER (
        PARTITION BY age
        ORDER BY salary DESC
    ) AS row_number
FROM employees;


-- .........................ROW_NUMBER with Department.........................--
SELECT
    name,
    department_id,
    salary,
    ROW_NUMBER() OVER (
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS row_number
FROM employees;
