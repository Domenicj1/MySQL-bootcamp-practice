-- Unions

# Syntax
#SELECT column_name(s) FROM table1
#UNION
#SELECT column_name(s) FROM table2;


SELECT first_name, last_name
FROM Parks_and_recreation.employee_salary
UNION
SELECT age, gender
FROM Parks_and_Recreation.employee_demographics
;