-- Subqueries

/*
query employees that have dept_id = 1 
doing this without joining tables rather using subqueries
*/

-- doing a subquery from the WHERE statment
SELECT *
FROM employee_demographics
WHERE employee_id IN 
				(SELECT employee_id
					FROM employee_salary
                    WHERE dept_id=1)
;

-- doing a subquery from the SELECT statement

SELECT first_name, salary,
(SELECT AVG(salary)
	FROM employee_salary)
FROM employee_salary
;

-- writing a subquery from the FROM

SELECT gender, AVG(age), MAX(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

SELECT AVG(`MAX(age)`)
FROM
(SELECT gender, AVG(age), MAX(age), COUNT(age)
FROM employee_demographics
GROUP BY gender) AS Agg_table
;

-- use alias for column names in the subquery to avoid writing this way `MAX(age)`
SELECT AVG(max_age)
FROM
(SELECT gender, 
AVG(age) AS avg_age, 
MAX(age) AS max_age,
MIN(age) AS min_age, 
COUNT(age) 
FROM employee_demographics
GROUP BY gender) AS Agg_table
;