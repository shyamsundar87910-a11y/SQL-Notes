-- ===================== 31_DATA_ANALYTICS_PRACTICE.sql =====================


-- .........................Total Employees.........................--
SELECT COUNT(*) AS total_employees
FROM employees;


-- .........................Total Salary.........................--
SELECT SUM(salary) AS total_salary
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


-- .........................Employees with Salary Above Average.........................--
SELECT name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


-- .........................Highest Paid Employee.........................--
SELECT name, salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);


-- .........................Employees by Department.........................--
SELECT
    departments.department_name,
    COUNT(employees.id) AS total_employees
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY departments.department_name;


-- .........................Average Salary by Department.........................--
SELECT
    departments.department_name,
    AVG(employees.salary) AS average_salary
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY departments.department_name;


-- .........................Highest Salary by Department.........................--
SELECT
    departments.department_name,
    MAX(employees.salary) AS highest_salary
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY departments.department_name
ORDER BY highest_salary DESC;
