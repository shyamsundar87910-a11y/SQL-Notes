-- ===================== 33_CUSTOMER_ANALYSIS.sql =====================


-- .........................Total Customers.........................--
SELECT COUNT(*) AS total_customers
FROM employees;


-- .........................Customers by Age.........................--
SELECT
    age,
    COUNT(*) AS total_customers
FROM employees
GROUP BY age
ORDER BY total_customers DESC;


-- .........................Average Salary by Age.........................--
SELECT
    age,
    AVG(salary) AS average_salary
FROM employees
GROUP BY age
ORDER BY average_salary DESC;


-- .........................Highest Paid Customer.........................--
SELECT
    name,
    salary
FROM employees
ORDER BY salary DESC
LIMIT 1;


-- .........................Lowest Paid Customer.........................--
SELECT
    name,
    salary
FROM employees
ORDER BY salary ASC
LIMIT 1;


-- .........................Customers Above Average Salary.........................--
SELECT
    name,
    salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


-- .........................Customer Salary Ranking.........................--
SELECT
    name,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;


-- .........................Customer Category.........................--
SELECT
    name,
    age,
    salary,
    CASE
        WHEN salary >= 35000 THEN 'Premium'
        WHEN salary >= 30000 THEN 'Regular'
        ELSE 'Basic'
    END AS customer_category
FROM employees;


-- .........................Department Wise Customers.........................--
SELECT
    departments.department_name,
    COUNT(employees.id) AS total_customers
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY departments.department_name
ORDER BY total_customers DESC;
