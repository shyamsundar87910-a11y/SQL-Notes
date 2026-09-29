-- ===================== 13_HAVING.sql =====================


-- .........................HAVING with COUNT.........................--
SELECT age, COUNT(*) AS total_employees
FROM employees
GROUP BY age
HAVING COUNT(*) > 1;


-- .........................HAVING with AVG.........................--
SELECT age, AVG(salary) AS average_salary
FROM employees
GROUP BY age
HAVING AVG(salary) > 28000;


-- .........................HAVING with SUM.........................--
SELECT age, SUM(salary) AS total_salary
FROM employees
GROUP BY age
HAVING SUM(salary) > 50000;


-- .........................HAVING with MAX.........................--
SELECT age, MAX(salary) AS highest_salary
FROM employees
GROUP BY age
HAVING MAX(salary) > 30000;


-- .........................GROUP BY with HAVING and ORDER BY.........................--
SELECT age, AVG(salary) AS average_salary
FROM employees
GROUP BY age
HAVING AVG(salary) > 28000
ORDER BY average_salary DESC;
