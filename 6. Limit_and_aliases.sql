-- Limit and Aliases
# SQL aliases are used to give a table, or a column in a table, a temporary name.
# Aliases are often used to make column names more readable.
# An alias only exists for the duration of that query.

# The LIMIT clause is used to specify the number of records to return.
# The LIMIT clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.
-- Syntax: 
-- SELECT column_name(s)
-- FROM table_name
-- WHERE condition
-- LIMIT number;

SELECT * 
FROM Parks_and_recreation.employee_demographics 
LIMIT 3
;

SELECT * 
FROM parks_and_recreation.employee_demographics 
LIMIT 3, 2
;

-- Aliasing (for aggregate functions)
SELECT gender, AVG(age) AS avg_age 
FROM parks_and_recreation.employee_demographics 
GROUP BY gender 
HAVING AVG(age) > 39;