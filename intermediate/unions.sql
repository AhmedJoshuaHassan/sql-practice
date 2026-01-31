/*
UNIONS
This is also a UNION DISTINCT
Return unique values for out tables

UNION ALL
This shows all the result from the UNION and not distinct values
*/

SELECT first_name, last_name
FROM employee_demographics dem
UNION
SELECT first_name, last_name
FROM employee_salary sal
;

SELECT first_name, last_name
FROM employee_demographics dem
UNION ALL
SELECT first_name, last_name
FROM employee_salary sal
;

SELECT first_name, last_name, 'Old' AS Label
FROM employee_demographics
WHERE age > 50
UNION
SELECT first_name, last_name, 'Highly Paid Employee' AS Label
FROM employee_salary
WHERE salary > 70000
;

SELECT first_name, last_name, 'Old Man' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Lady' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly Paid Employee' AS Label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;