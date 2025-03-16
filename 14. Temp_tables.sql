-- Temporary Tables
-- Only visible to the session they were created in

CREATE TEMPORARY TABLE temp_table
(
first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
);

INSERT INTO temp_table
VALUES('Domenic', 'Jernigan', 'Fast & Furious');

SELECT CONCAT(first_name, " ", last_name) AS Name, favorite_movie favorite_movie
FROM temp_table;

SELECT *
FROM employee_salary;

CREATE TEMPORARY TABLE salary_over_50k(
SELECT *
FROM employee_salary
WHERE salary > 50000
);

SELECT * FROM salary_over_50k;