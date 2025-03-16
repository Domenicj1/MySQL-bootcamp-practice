-- CTES (Common Table Expressions)

-- You can only use CTEs immediatley after they're created

WITH CTE_example (Gender, AVG_SAL, MAX_SAL, MIN_SAL, COUNT_SAL) AS 
(
SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) count_sal
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT AVG(avg_sal)
FROM CTE_example
;

SELECT AVG(avg_sal)
FROM (
SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) count_sal
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
) AS subquery_example
;

WITH CTE_EX AS
(
SELECT employee_id, CONCAT(first_name, " ", last_name) AS Full_name, gender, birth_date
FROM employee_demographics
WHERE birth_date > '1985-01-01'
)
,
CTE_EX2 AS
(
SELECT employee_id, salary
FROM employee_salary
WHERE salary > 50000
)
SELECT *
FROM CTE_EX
JOIN CTE_EX2
	ON CTE_EX.employee_id = CTE_EX2.employee_id
ORDER BY salary DESC
;