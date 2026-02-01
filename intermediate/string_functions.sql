-- String Functions

-- LENGTH useful for example checking phone numbers which usually have same length

SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name)
FROM employee_salary
ORDER BY 2
;

SELECT UPPER('sky');

SELECT LOWER('SKY');

SELECT first_name, UPPER(last_name)
FROM employee_salary
ORDER BY 1
;

/*
TRIM removes whitespaces
LTRIM removes whitespaces from the left but do not affect the right
RTRIM does the reverse of LTRIM
*/

SELECT TRIM('    sky     ');

SELECT LTRIM('    sky     ');

SELECT RTRIM('            sky     ');

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name,3,2),
birth_date,
SUBSTRING(birth_date,6,2) birth_month
FROM employee_demographics;

SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics;

SELECT LOCATE('m', 'Ahmed');

SELECT first_name, LOCATE('An', first_name)
FROM employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name,' ' ,last_name) fullname,
CONCAT(lower(first_name),lower(last_name),'@gmail.com') email
FROM employee_demographics;

