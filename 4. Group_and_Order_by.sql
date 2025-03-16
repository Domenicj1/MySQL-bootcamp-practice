-- GROUP BY
# Intended to group up or aggregate rows within a column that contain the same value
SELECT *
FROM Parks_and_Recreation.employee_demographics
;

SELECT gender
FROM Parks_and_Recreation.employee_demographics
GROUP BY gender
;

SELECT gender, AVG(age)
From Parks_and_Recreation.employee_demographics
GROUP BY gender
;
# The above query will group together all the different gender types, being male and female, 
# then compute an aggregate average function on the ages of the group

SELECT occupation, salary
FROM Parks_and_Recreation.employee_salary
GROUP BY occupation, salary
;

SELECT gender, MAX(age), MIN(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
Group by gender
;
# The above `MAX`, `MIN`, and `COUNT` are more examples of aggregate functions 
# being used for grouped columns

-- ORDER BY (ASC is default)
# This will either sort the results down the specified column in ascending or descending order

SELECT * 
FROM Parks_and_Recreation.employee_demographics
ORDER BY gender, age DESC
;
# You can put either `ASC` or `	DESC` after specifying a column name to order it by 
# ascending or descending order; the order of the columns that you order by matters