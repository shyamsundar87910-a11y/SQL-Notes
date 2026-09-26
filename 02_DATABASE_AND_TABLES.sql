-- ===================== 02_DATABASE_AND_TABLES.sql =====================


-- .........................Create Table.........................--

CREATE TABLE departments (
    department_id INT,
    department_name VARCHAR(50),
    location VARCHAR(50)
);


-- .........................Insert Data.........................--

INSERT INTO departments VALUES
(1, 'Data Analytics', 'Jamshedpur'),
(2, 'IT', 'Ranchi'),
(3, 'HR', 'Kolkata');


-- .........................View Table Data.........................--

SELECT * FROM departments;


-- .........................Select Specific Columns.........................--

SELECT department_name, location
FROM departments;


-- .........................Add New Column.........................--

ALTER TABLE departments
ADD manager VARCHAR(50);


-- .........................Update New Column.........................--

UPDATE departments
SET manager = 'Rahul'
WHERE department_id = 1;


-- .........................View Updated Table.........................--

SELECT * FROM departments;


-- .........................Rename Column.........................--

ALTER TABLE departments
RENAME COLUMN location TO city;


-- .........................View Table After Rename.........................--

SELECT * FROM departments;
