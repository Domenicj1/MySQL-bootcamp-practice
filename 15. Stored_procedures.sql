-- Stored Procedures

USE parks_and_recreation;

CREATE PROCEDURE large_salary()
SELECT *
FROM employee_salary
WHERE salary >= 50000
;

CALL large_salary();

DELIMITER $$
CREATE PROCEDURE large_salaries2()
BEGIN
	SELECT *
    FROM employee_salary
	WHERE salary >= 50000;
    SELECT *
    FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

CALL large_salaries2();

DELIMITER $$
CREATE PROCEDURE large_salaries3(employee_num INT)
BEGIN
	SELECT salary
    FROM employee_salary
	WHERE employee_id = employee_num;
END $$
DELIMITER ;

CALL large_salaries3(8);