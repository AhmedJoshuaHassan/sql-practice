/* 
'SELECT *' Selects all the columns on the table 
FROM specifies the database and table to quary
';' This specifies the end of the query
 */

SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT *
FROM parks_and_recreation.employee_salary;

/* 
Specific columns can be selected
Write specific column name in the SELECT 
*/

SELECT first_name,
last_name,
birth_name,
age,
age+10
FROM parks_and_recreation.employee_demographics;

/* DISTINCT
This selects the unique values
*/

SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;