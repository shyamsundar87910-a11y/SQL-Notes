-- ===================== 32_SALES_ANALYSIS.sql =====================


-- .........................Total Sales.........................--
SELECT SUM(salary) AS total_sales
FROM employees;


-- .........................Average Salary.........................--
SELECT AVG(salary) AS average_salary
FROM employees;


-- .........................Highest Salary.........................--
SELECT MAX(salary) AS highest_salary
FROM employees;


-- .........................Lowest Salary.........................--
SELECT MIN(salary) AS lowest_salary
FROM employees;


-- .........................Salary by Age.........................--
SELECT
    age,
    SUM(salary) AS total_salary
FROM employees
GROUP BY age
ORDER BY total_salary DESC;


-- .........................Average Salary by Age.........................--
SELECT
    age,
    AVG(salary) AS average_salary
FROM employees
GROUP BY age
ORDER BY average_salary DESC;


-- .........................Employees with Salary Above 30000.........................--
SELECT
    name,
    salary
FROM employees
WHERE salary > 30000
ORDER BY salary DESC;


-- .........................Top 5 Highest Salaries.........................--
SELECT
    name,
    salary
FROM employees
ORDER BY salary DESC
LIMIT 5;


-- .........................Salary Category.........................--
SELECT
    name,
    salary,
    CASE
        WHEN salary < 28000 THEN 'Low'
        WHEN salary <= 32000 THEN 'Medium'
        ELSE 'High'
    END AS salary_category
FROM employees;


-- .........................Salary Ranking.........................--
SELECT
    name,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;
