SELECT * 
FROM Parks_and_Recreation.employee_demographics;

SELECT 
first_name, 
last_name, 
age, 
(age * 10) + 15
FROM parks_and_recreation.employee_demographics;
#SQL will complete arithmetic using PEMDAS for order of operations^^^

SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;