-- ===================== 38_BUSINESS_QUESTIONS.sql =====================


-- .........................Q1. Total Number of Employees.........................--
SELECT COUNT(*) AS total_employees
FROM employees;


-- .........................Q2. Find the Highest Paid Employee.........................--
SELECT name, salary
FROM employees
ORDER BY salary DESC
LIMIT 1;


-- .........................Q3. Find the Lowest Paid Employee.........................--
SELECT name, salary
FROM employees
ORDER BY salary ASC
LIMIT 1;


-- .........................Q4. Find Employees with Salary Above Average.........................--
SELECT name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


-- .........................Q5. Find the Average Salary.........................--
SELECT AVG(salary) AS average_salary
FROM employees;


-- .........................Q6. Find Total Salary by Department.........................--
SELECT
    department_id,
    SUM(salary) AS total_salary
FROM employees
GROUP BY department_id
ORDER BY total_salary DESC;


-- .........................Q7. Find Average Salary by Department.........................--
SELECT
    department_id,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
ORDER BY average_salary DESC;


-- .........................Q8. Find the Highest Salary in Each Department.........................--
SELECT
    department_id,
    MAX(salary) AS highest_salary
FROM employees
GROUP BY department_id
ORDER BY highest_salary DESC;


-- .........................Q9. Find Top 3 Highest Paid Employees.........................--
SELECT
    name,
    salary
FROM employees
ORDER BY salary DESC
LIMIT 3;


-- .........................Q10. Rank Employees by Salary.........................--
SELECT
    name,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;


-- .........................Q11. Find Top Employee in Each Department.........................--
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


-- .........................Q12. Categorize Employees by Salary.........................--
SELECT
    name,
    salary,
    CASE
        WHEN salary < 28000 THEN 'Low'
        WHEN salary <= 32000 THEN 'Medium'
        ELSE 'High'
    END AS salary_category
FROM employees;
