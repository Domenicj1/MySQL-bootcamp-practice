-- Case Statements

SELECT first_name, last_name, age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age between 31 AND 59 THEN 'Adult'
    WHEN age >= 60 THEN 'Old'
END AS age_bracket
FROM employee_demographics;

SELECT first_name, last_name, salary, dept_id,
CASE
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
END AS "New_salary",
CASE
    WHEN dept_id = 6 THEN salary * 0.10
END AS "Bonus"
FROM employee_salary;
-- Pay increase and Bonus: 
-- less than 50K = 5% raise 
-- greater than 50K = 7% raise
-- Works in Finance Department? = 10% bonus