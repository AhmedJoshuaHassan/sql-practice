-- Stored Procedures

SELECT *
FROM employee_salary
WHERE salary >= 50000
;

-- USE parks_and_recreation | this is use to specify the database you can this to be 

CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary>= 50000;

CALL large_salaries()

-- Use a delimitor for more than one quer

DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary>= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary>= 10000;
END $$

-- changing the delimitor from $ to ;
DELIMITER ;

CALL large_salaries3();

DELIMITER $$
CREATE PROCEDURE large_salaries4(employee_id_param INT)
BEGIN
	SELECT salary
	FROM employee_salary
	WHERE employee_id = employee_id_param
    ;
END $$

DELIMITER ;

CALL large_salaries4(1);