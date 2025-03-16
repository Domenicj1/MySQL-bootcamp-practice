-- String Functions
 
 SELECT first_name, LENGTH(first_name)
 FROM employee_demographics
 ORDER BY 2;
 
 SELECT last_name, UPPER(last_name)
 FROM employee_demographics;
 
SELECT TRIM("     .      MOUNTAIN.    ");
SELECT LTRIM("     .      MOUNTAIN. .    ");
SELECT RTRIM("     .      MOUNTAIN .    ");

 SELECT first_name,
 LEFT(first_name, 4), 
 RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 4),
SUBSTRING(birth_date,6,2) AS birth_month
FROM employee_demographics;

SELECT first_name, 
REPLACE(first_name, "A", "z")
FROM employee_demographics;

SELECT LOCATE("X", "ALEXANDER");

SELECT first_name, 
LOCATE("An", first_name)
FROM employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name, " ", last_name) AS full_name
FROM employee_demographics;