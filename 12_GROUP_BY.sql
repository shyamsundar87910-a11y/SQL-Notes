-- ===================== 12_GROUP_BY.sql =====================


-- .........................Group Employees by Age.........................--
SELECT age, COUNT(*) AS total_employees
FROM employees
GROUP BY age;


-- .........................Group Employees by Salary.........................--
SELECT salary, COUNT(*) AS total_employees
FROM employees
GROUP BY salary;


-- .........................Average Salary by Age.........................--
SELECT age, AVG(salary) AS average_salary
FROM employees
GROUP BY age;


-- .........................Total Salary by Age.........................--
SELECT age, SUM(salary) AS total_salary
FROM employees
GROUP BY age;


-- .........................Maximum Salary by Age.........................--
SELECT age, MAX(salary) AS highest_salary
FROM employees
GROUP BY age;


-- .........................Minimum Salary by Age.........................--
SELECT age, MIN(salary) AS lowest_salary
FROM employees
GROUP BY age;


-- .........................Multiple Aggregate Functions with GROUP BY.........................--
SELECT
    age,
    COUNT(*) AS total_employees,
    AVG(salary) AS average_salary,
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary
FROM employees
GROUP BY age;
