-- ===================== 16_CASE_STATEMENT.sql =====================


-- .........................Simple CASE.........................--
SELECT
    name,
    salary,
    CASE
        WHEN salary >= 30000 THEN 'High Salary'
        ELSE 'Low Salary'
    END AS salary_category
FROM employees;


-- .........................CASE with Multiple Conditions.........................--
SELECT
    name,
    age,
    CASE
        WHEN age < 22 THEN 'Young'
        WHEN age <= 24 THEN 'Adult'
        ELSE 'Senior'
    END AS age_category
FROM employees;


-- .........................CASE with Salary Range.........................--
SELECT
    name,
    salary,
    CASE
        WHEN salary < 28000 THEN 'Low'
        WHEN salary <= 32000 THEN 'Medium'
        ELSE 'High'
    END AS salary_level
FROM employees;


-- .........................CASE with Calculation.........................--
SELECT
    name,
    salary,
    CASE
        WHEN salary >= 30000 THEN salary * 12
        ELSE salary * 10
    END AS calculated_income
FROM employees;


-- .........................CASE with ORDER BY.........................--
SELECT
    name,
    salary,
    CASE
        WHEN salary >= 30000 THEN 'High'
        ELSE 'Low'
    END AS salary_category
FROM employees
ORDER BY salary_category;
