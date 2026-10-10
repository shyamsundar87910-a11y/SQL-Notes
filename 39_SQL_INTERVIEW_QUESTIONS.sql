-- ===================== 39_SQL_INTERVIEW_QUESTIONS.sql =====================


-- .........................Q1. Find the Second Highest Salary.........................--
SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);


-- .........................Q2. Find the Nth Highest Salary.........................--
SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
OFFSET 2
LIMIT 1;


-- .........................Q3. Find Employees with Duplicate Ages.........................--
SELECT
    age,
    COUNT(*) AS total_employees
FROM employees
GROUP BY age
HAVING COUNT(*) > 1;


-- .........................Q4. Find Employees Whose Names Start with S.........................--
SELECT *
FROM employees
WHERE name LIKE 'S%';


-- .........................Q5. Find Employees Whose Names End with a.........................--
SELECT *
FROM employees
WHERE name LIKE '%a';


-- .........................Q6. Find Employees Whose Names Contain a.........................--
SELECT *
FROM employees
WHERE name ILIKE '%a%';


-- .........................Q7. Find Employees Earning More Than Their Department Average.........................--
SELECT name, department_id, salary
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
);


-- .........................Q8. Find Employees Without a Department.........................--
SELECT *
FROM employees
WHERE department_id IS NULL;


-- .........................Q9. Find the Top 3 Salaries Using DENSE_RANK.........................--
WITH salary_ranks AS (
    SELECT
        name,
        salary,
        DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
    FROM employees
)
SELECT *
FROM salary_ranks
WHERE salary_rank <= 3;


-- .........................Q10. Find Employees Earning Above Overall Average.........................--
SELECT name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
)
ORDER BY salary DESC;
