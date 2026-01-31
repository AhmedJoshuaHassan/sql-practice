/* 
JOIN: join is carried out on column having same or almost same data
INNER JOIN: returns rows that are the same in both tables
By defualt JOIN represent INNER JOIN. Writing INNER JOIN makes it more explicit.
*/

SELECT *
FROM employee_demographics
ORDER BY employee_id;

SELECT *
FROM employee_salary
ORDER BY employee_id;

SELECT dem.employee_id, age , occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id =sal.employee_id;
    
SELECT dem.employee_id, age , occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id =sal.employee_id;

/*
OUTER JOINS : LEFT JOIN/LEFT OUTER JOIN, RIGHT JOIN/RIGHT OUTER JOIN, FULL OUTER JOIN
LEFT JOIN: takes everything on the left table and matches on the right table and return none for rows not there
RIGHT JOIN: does the reverse of right join
*/

SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id =sal.employee_id;
    
SELECT *
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
	ON dem.employee_id =sal.employee_id;
    
-- SELF JOIN

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name,
emp1.first_name AS first_name_emp,
emp1.last_name AS last_name_emp
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;

-- Joing multiple tables together
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id =sal.employee_id
INNER JOIN parks_departments pd
	ON sal.dept_id = pd.department_id
;