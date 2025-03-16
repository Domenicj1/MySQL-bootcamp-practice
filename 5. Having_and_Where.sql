-- HAVING vs WHERE
# The WHERE clause is applied first to the individual rows in the tables or table-valued objects in the Diagram pane. 
# Only the rows that meet the conditions in the WHERE clause are grouped.
# The HAVING clause is then applied to the rows in the result set. 
# Only the groups that meet the HAVING conditions appear in the query output. 
# You can apply a HAVING clause only to columns that also appear in the GROUP BY clause or in an aggregate function.



SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

SELECT occupation, AVG(salary)
FROM Parks_and_Recreation.employee_salary
WHERE occupation LIKE "%manager%"
GROUP BY occupation
HAVING AVG(salary) > 75000
;

SELECT occupation, AVG(salary), COUNT(employee_id) 
FROM Parks_and_Recreation.employee_salary 
GROUP BY occupation 
HAVING AVG(salary) > 40000;