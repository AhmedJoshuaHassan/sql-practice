/* 
JOIN: join is carried out on column having same or almost same data
INNER JOIN: returns rows that are the same in both tables
By defualt JOIN represent INNER JOIN. Writing INNER JOIN makes it more explicit.
*/

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT dem.employee_id, age , occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id =sal.employee_id;
    
SELECT dem.employee_id, age , occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id =sal.employee_id;

