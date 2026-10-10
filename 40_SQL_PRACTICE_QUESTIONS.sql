-- ===================== 40_SQL_PRACTICE_QUESTIONS.sql =====================


-- .........................Q1. Find Employees Earning Between 25000 and 35000.........................--
SELECT *
FROM employees
WHERE salary BETWEEN 25000 AND 35000;


-- .........................Q2. Find Employees Whose Age Is Between 22 and 25.........................--
SELECT *
FROM employees
WHERE age BETWEEN 22 AND 25;


-- .........................Q3. Find Employees in Specific Departments.........................--
SELECT *
FROM employees
WHERE department_id IN (1, 2);


-- .........................Q4. Find Employees Not in Department 1.........................--
SELECT *
FROM employees
WHERE department_id <> 1;


-- .........................Q5. Find Employees with Missing Salary.........................--
SELECT *
FROM employees
WHERE salary IS NULL;


-- .........................Q6. Count Employees in Each Department.........................--
SELECT
    department_id,
    COUNT(*) AS total_employees
FROM employees
GROUP BY department_id
ORDER BY total_employees DESC;


-- .........................Q7. Find Departments with More Than Two Employees.........................--
SELECT
    department_id,
    COUNT(*) AS total_employees
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 2;


-- .........................Q8. Calculate Annual Salary.........................--
SELECT
    name,
    salary,
    salary * 12 AS annual_salary
FROM employees
ORDER BY annual_salary DESC;


-- .........................Q9. Find Employees with Salary Above 30000 and Age Below 25.........................--
SELECT *
FROM employees
WHERE salary > 30000
AND age < 25;


-- .........................Q10. Display Employees in Salary Order.........................--
SELECT
    name,
    age,
    salary
FROM employees
ORDER BY salary DESC, name ASC;
