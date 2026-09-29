-- ===================== 15_DATE_FUNCTIONS.sql =====================


-- .........................Current Date.........................--
SELECT CURRENT_DATE AS today;


-- .........................Current Time.........................--
SELECT CURRENT_TIME AS current_time;


-- .........................Current Date and Time.........................--
SELECT CURRENT_TIMESTAMP AS current_datetime;


-- .........................Extract Year.........................--
SELECT EXTRACT(YEAR FROM CURRENT_DATE) AS current_year;


-- .........................Extract Month.........................--
SELECT EXTRACT(MONTH FROM CURRENT_DATE) AS current_month;


-- .........................Extract Day.........................--
SELECT EXTRACT(DAY FROM CURRENT_DATE) AS current_day;


-- .........................Add Days to Date.........................--
SELECT CURRENT_DATE + INTERVAL '7 days' AS after_7_days;


-- .........................Subtract Days from Date.........................--
SELECT CURRENT_DATE - INTERVAL '7 days' AS before_7_days;


-- .........................Date Difference.........................--
SELECT CURRENT_DATE - DATE '2026-01-01' AS days_difference;
