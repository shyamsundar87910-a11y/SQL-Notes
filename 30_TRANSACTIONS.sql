-- ===================== 30_TRANSACTIONS.sql =====================


-- .........................Start Transaction.........................--
BEGIN;


-- .........................Insert Data.........................--
INSERT INTO employees (id, name, age, salary)
VALUES (14, 'Vikas', 25, 33000);


-- .........................Check Inserted Data.........................--
SELECT *
FROM employees
WHERE id = 14;


-- .........................Commit Transaction.........................--
COMMIT;


-- .........................Start Another Transaction.........................--
BEGIN;


-- .........................Update Salary.........................--
UPDATE employees
SET salary = 40000
WHERE id = 14;


-- .........................Check Updated Data.........................--
SELECT *
FROM employees
WHERE id = 14;


-- .........................Rollback Transaction.........................--
ROLLBACK;


-- .........................Check Data After Rollback.........................--
SELECT *
FROM employees
WHERE id = 14;
