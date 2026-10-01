-- ===================== 20_EXISTS.sql =====================


-- .........................EXISTS.........................--
SELECT *
FROM employees
WHERE EXISTS (
    SELECT 1
    FROM departments
    WHERE departments.department_id = employees.department_id
);


-- .........................NOT EXISTS.........................--
SELECT *
FROM employees
WHERE NOT EXISTS (
    SELECT 1
    FROM departments
    WHERE departments.department_id = employees.department_id
);


-- .........................EXISTS with Condition.........................--
SELECT *
FROM employees
WHERE EXISTS (
    SELECT 1
    FROM departments
    WHERE departments.department_id = employees.department_id
    AND departments.department_name = 'IT'
);


-- .........................EXISTS with Specific Columns.........................--
SELECT name, salary
FROM employees
WHERE EXISTS (
    SELECT 1
    FROM departments
    WHERE departments.department_id = employees.department_id
);


-- .........................NOT EXISTS with Specific Columns.........................--
SELECT name, salary
FROM employees
WHERE NOT EXISTS (
    SELECT 1
    FROM departments
    WHERE departments.department_id = employees.department_id
);
