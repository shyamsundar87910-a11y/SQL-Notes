-- ===================== 14_STRING_FUNCTIONS.sql =====================


-- .........................UPPER.........................--
SELECT UPPER(name) AS upper_name
FROM employees;


-- .........................LOWER.........................--
SELECT LOWER(name) AS lower_name
FROM employees;


-- .........................LENGTH.........................--
SELECT name, LENGTH(name) AS name_length
FROM employees;


-- .........................CONCAT.........................--
SELECT CONCAT(name, ' - Employee') AS employee_info
FROM employees;


-- .........................SUBSTRING.........................--
SELECT name, SUBSTRING(name, 1, 3) AS short_name
FROM employees;


-- .........................TRIM.........................--
SELECT TRIM('  SQL Learning  ') AS trimmed_text;


-- .........................REPLACE.........................--
SELECT REPLACE(name, 'a', 'A') AS updated_name
FROM employees;


-- .........................String Functions Together.........................--
SELECT
    name,
    UPPER(name) AS upper_name,
    LOWER(name) AS lower_name,
    LENGTH(name) AS name_length
FROM employees;
