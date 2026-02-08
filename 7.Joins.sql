-- Joins
Select * from employee_demographics;

select * from employee_salary;

-- Inner join - return rows that are same in both cols (default - inner join - join)
-- 1.Selecting all columns
SELECT * FROM  
employee_demographics as demo
JOIN  employee_salary as sal
ON demo.employee_id = sal.employee_id;

-- 2. Selecting some particular cols for output
SELECT demo.employee_id,demo.first_name,age from   -- note if they have same col name u have to specify the name of the table or alias name of table if used
employee_demographics as demo
INNER JOIN  employee_salary as sal
ON demo.employee_id = sal.employee_id;

-- Outer Join
-- 1.Left join - takes everything from left table & returns only the matches from right table
SELECT * from   
employee_demographics as demo
LEFT JOIN  employee_salary as sal
ON demo.employee_id = sal.employee_id;

-- Right join - takes everything on right table & returns only the matches from left table
SELECT * from   
employee_demographics as demo
RIGHT JOIN  employee_salary as sal
ON demo.employee_id = sal.employee_id;
-- if the row doesnt have any data on left or right join we get nulls on each cols of that row


-- Self Join
SELECT emp1.employee_id as emp_santa,
emp1.first_name as emp_santa_firstname,
emp1.last_name as emp_santa_lastname,
emp2.employee_id as emp_id,
emp2.first_name as emp_firstname,
emp2.last_name as emp_lastname
from 
employee_salary as emp1
join employee_salary as emp2
on emp1.employee_id + 1 = emp2.employee_id; -- Join a row with another row whose employee_id is exactly one more than mine.

-- Joining multiple tables together
SELECT * FROM  
employee_demographics as demo
INNER JOIN  employee_salary as sal
	ON demo.employee_id = sal.employee_id
INNER JOIN parks_departments as pd
	ON sal.dept_id = pd.department_id;

