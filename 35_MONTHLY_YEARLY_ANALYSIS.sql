-- ===================== 35_MONTHLY_YEARLY_ANALYSIS.sql =====================


-- .........................Current Year.........................--
SELECT EXTRACT(YEAR FROM CURRENT_DATE) AS current_year;


-- .........................Current Month.........................--
SELECT EXTRACT(MONTH FROM CURRENT_DATE) AS current_month;


-- .........................Year from Date.........................--
SELECT
    CURRENT_DATE AS today,
    EXTRACT(YEAR FROM CURRENT_DATE) AS year;


-- .........................Month from Date.........................--
SELECT
    CURRENT_DATE AS today,
    EXTRACT(MONTH FROM CURRENT_DATE) AS month;


-- .........................Month Name.........................--
SELECT
    TO_CHAR(CURRENT_DATE, 'Month') AS month_name;


-- .........................Year and Month.........................--
SELECT
    TO_CHAR(CURRENT_DATE, 'YYYY-MM') AS year_month;


-- .........................Create Sample Date Data.........................--
CREATE TABLE employee_sales (
    sale_id INT,
    employee_name VARCHAR(50),
    sale_amount INT,
    sale_date DATE
);


-- .........................Insert Sample Sales.........................--
INSERT INTO employee_sales VALUES
(1, 'Shyam', 25000, '2026-01-15'),
(2, 'Rahul', 30000, '2026-02-10'),
(3, 'Aman', 28000, '2026-03-20'),
(4, 'Ravi', 35000, '2026-04-05'),
(5, 'Priya', 32000, '2026-05-12');


-- .........................Monthly Sales Analysis.........................--
SELECT
    EXTRACT(MONTH FROM sale_date) AS month,
    SUM(sale_amount) AS total_sales
FROM employee_sales
GROUP BY EXTRACT(MONTH FROM sale_date)
ORDER BY month;


-- .........................Yearly Sales Analysis.........................--
SELECT
    EXTRACT(YEAR FROM sale_date) AS year,
    SUM(sale_amount) AS total_sales
FROM employee_sales
GROUP BY EXTRACT(YEAR FROM sale_date)
ORDER BY year;


-- .........................Monthly Average Sales.........................--
SELECT
    EXTRACT(MONTH FROM sale_date) AS month,
    AVG(sale_amount) AS average_sales
FROM employee_sales
GROUP BY EXTRACT(MONTH FROM sale_date)
ORDER BY month;
