-- ===================== 28_INDEXES.sql =====================


-- .........................Create Index.........................--
CREATE INDEX idx_employee_name
ON employees(name);


-- .........................Create Index on Salary.........................--
CREATE INDEX idx_employee_salary
ON employees(salary);


-- .........................Create Index on Age.........................--
CREATE INDEX idx_employee_age
ON employees(age);


-- .........................Create Multiple Column Index.........................--
CREATE INDEX idx_employee_age_salary
ON employees(age, salary);


-- .........................Use Indexed Column in Query.........................--
SELECT *
FROM employees
WHERE salary > 30000;


-- .........................View Indexes.........................--
SELECT indexname, indexdef
FROM pg_indexes
WHERE tablename = 'employees';


-- .........................Drop Index.........................--
-- DROP INDEX idx_employee_name;
-- DROP INDEX idx_employee_salary;
-- DROP INDEX idx_employee_age;
-- DROP INDEX idx_employee_age_salary;
