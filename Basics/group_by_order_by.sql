-- GROUP BY
SELECT gender
FROM employee_demographics
GROUP BY gender;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary;

/*
ORDER BY
This sort the result set in ascending ASC (by default) or descending order DESC
Note: order of column matter for this query
*/

SELECT *
FROM employee_demographics
ORDER BY gender;


