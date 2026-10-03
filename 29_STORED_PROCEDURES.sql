-- ===================== 29_STORED_PROCEDURES.sql =====================


-- .........................Create Stored Procedure.........................--
CREATE OR REPLACE PROCEDURE add_employee(
    p_id INT,
    p_name VARCHAR,
    p_age INT,
    p_salary INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO employees (id, name, age, salary)
    VALUES (p_id, p_name, p_age, p_salary);
END;
$$;


-- .........................Call Stored Procedure.........................--
CALL add_employee(13, 'Ankit', 25, 31000);


-- .........................View Inserted Employee.........................--
SELECT *
FROM employees
WHERE id = 13;


-- .........................Create Procedure to Update Salary.........................--
CREATE OR REPLACE PROCEDURE update_salary(
    p_id INT,
    p_salary INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE employees
    SET salary = p_salary
    WHERE id = p_id;
END;
$$;


-- .........................Call Update Procedure.........................--
CALL update_salary(13, 35000);


-- .........................Check Updated Salary.........................--
SELECT *
FROM employees
WHERE id = 13;


-- .........................Drop Procedure.........................--
-- DROP PROCEDURE add_employee(INT, VARCHAR, INT, INT);
-- DROP PROCEDURE update_salary(INT, INT);
