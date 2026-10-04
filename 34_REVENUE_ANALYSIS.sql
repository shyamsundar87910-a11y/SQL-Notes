-- ===================== 34_REVENUE_ANALYSIS.sql =====================


-- .........................Total Revenue.........................--
SELECT SUM(salary) AS total_revenue
FROM employees;


-- .........................Average Revenue.........................--
SELECT AVG(salary) AS average_revenue
FROM employees;


-- .........................Revenue by Age.........................--
SELECT
    age,
    SUM(salary) AS total_revenue
FROM employees
GROUP BY age
ORDER BY total_revenue DESC;


-- .........................Revenue by Department.........................--
SELECT
    departments.department_name,
    SUM(employees.salary) AS total_revenue
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY departments.department_name
ORDER BY total_revenue DESC;


-- .........................Highest Revenue Department.........................--
SELECT
    departments.department_name,
    SUM(employees.salary) AS total_revenue
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY departments.department_name
ORDER BY total_revenue DESC
LIMIT 1;


-- .........................Revenue Above Average.........................--
SELECT
    name,
    salary AS revenue
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


-- .........................Revenue Percentage.........................--
SELECT
    name,
    salary,
    ROUND(
        (salary * 100.0) / SUM(salary) OVER (),
        2
    ) AS revenue_percentage
FROM employees;


-- .........................Revenue Ranking.........................--
SELECT
    name,
    salary AS revenue,
    RANK() OVER (ORDER BY salary DESC) AS revenue_rank
FROM employees;
