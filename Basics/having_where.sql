/*
HAVING vs WHERE
This Having comes into play when group by has been applied
it filters based on aggregate function
*/

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000; 