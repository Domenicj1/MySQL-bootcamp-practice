-- Joins
# Joins allow you to connect two or more tables if they have a common column
# Inner Joins, Outer Joins, and Self Joins


-- Inner (default) Joins
SELECT * 
FROM Parks_and_Recreation.employee_demographics
;

SELECT * 
FROM Parks_and_Recreation.employee_salary
;

SELECT dem.employee_id, dem.age, sal.occupation #Must specify which table the column name refers to if the tables have column names in common (good use of aliases)
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN Parks_and_Recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

-- Outer Joins
SELECT * 
FROM Parks_and_Recreation.employee_demographics AS demo 
RIGHT OUTER JOIN Parks_and_Recreation.employee_salary AS sal 
	ON demo.employee_id = sal.employee_id
;

SELECT *
FROM parks_and_recreation.employee_demographics AS demo
LEFT OUTER JOIN parks_and_recreation.employee_salary AS sal
	ON demo.employee_id = sal.employee_id
;

-- Self Joins
SELECT lefTab.employee_id AS emp_id, lefTab.first_name AS santa_first, lefTab.last_name AS santa_last,
righTab.employee_id, righTab.first_name, righTab.last_name
FROM employee_salary AS lefTab 
JOIN employee_salary AS righTab 
	ON lefTab.employee_id + 1 = righTab.employee_id
    ;

-- Joining multiple tables together (3 or more)

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
	ON pd.department_id = sal.dept_id
;


SELECT *
FROM parks_departments #conventionally considered a "reference table" due to static, unique record values; opposed to duplicate, changing demographics and salary tables
;