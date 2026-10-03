-- ===================== 27_VIEWS.sql =====================


-- .........................Create View.........................--
CREATE VIEW employee_details AS
SELECT
    id,
    name,
    age,
    salary
FROM employees;


-- .........................View Data.........................--
SELECT *
FROM employee_details;


-- .........................View Specific Columns.........................--
SELECT name, salary
FROM employee_details;


-- .........................Create View with WHERE.........................--
CREATE VIEW high_salary_employees AS
SELECT
    name,
    age,
    salary
FROM employees
WHERE salary > 30000;


-- .........................View High Salary Employees.........................--
SELECT *
FROM high_salary_employees;


-- .........................Create View with JOIN.........................--
CREATE VIEW employee_departments AS
SELECT
    employees.name,
    employees.salary,
    departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id;


-- .........................View Joined Data.........................--
SELECT *
FROM employee_departments;


-- .........................Drop View.........................--
-- DROP VIEW employee_details;
-- DROP VIEW high_salary_employees;
-- DROP VIEW employee_departments;
