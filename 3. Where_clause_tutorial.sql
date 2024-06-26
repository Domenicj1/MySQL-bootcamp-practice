# WHERE clause is used to help filter our records and or rows of data
-- It does so by returning the specific rows which fullfill a specific condition

SELECT *
FROM parks_and_recreation.employee_salary
WHERE first_name = "Leslie"
;
# The single equal sign above in this example is an instance of a "comparison operator"

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary > 50000
;
# The greater-than sign above is another instance of a "comparison operator"

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
;

-- Logical Operators: `AND`, `OR`, `NOT` in `WHERE` clause
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE (first_name = "Leslie" AND age = 44) OR age > 55
;
# Above in the parenthesis is an example of an "isolated conditional statement" which also uses PEMDAS

-- `LIKE` Statements: using `%` (anything) and `_` (specific value)
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE "%er%"
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE "a___%"
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE "1989%"
;
 


