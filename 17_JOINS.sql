-- ===================== 17_JOINS.sql =====================


-- .........................Create Departments Table.........................--
CREATE TABLE departments (
    department_id INT,
    department_name VARCHAR(50)
);


-- .........................Insert Department Data.........................--
INSERT INTO departments VALUES
(1, 'Data Analytics'),
(2, 'IT'),
(3, 'HR');


-- .........................Add Department ID to Employees.........................--
ALTER TABLE employees
ADD department_id INT;


-- .........................Update Employee Departments.........................--
UPDATE employees
SET department_id = 1
WHERE id IN (1, 5, 9);


UPDATE employees
SET department_id = 2
WHERE id IN (2, 6, 7);


UPDATE employees
SET department_id = 3
WHERE id IN (3, 4, 8);


-- .........................INNER JOIN.........................--
SELECT
    employees.name,
    departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id;


-- .........................LEFT JOIN.........................--
SELECT
    employees.name,
    departments.department_name
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.department_id;


-- .........................RIGHT JOIN.........................--
SELECT
    employees.name,
    departments.department_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.department_id;


-- .........................FULL JOIN.........................--
SELECT
    employees.name,
    departments.department_name
FROM employees
FULL JOIN departments
ON employees.department_id = departments.department_id;
