-- String functions

select length("sky");

select first_name, length(first_name) from employee_demographics
order by 2 ; -- Ordering by the second col in ascending

select upper("sky");
select lower("SKY");

select first_name, UPPER(first_name)
from employee_demographics;

-- trim
SELECT trim("            sky");

-- substring
select first_name, left(first_name,4)from employee_demographics; -- from left 4 characters
select first_name, right(first_name,4)from employee_demographics; -- from right 4 characters

select first_name,substring(first_name,3,2)from employee_demographics; -- from third pos till 2 characters

select first_name,substring(birth_date,6,2) as Birth_Month from employee_demographics;


-- Replace
select first_name,replace(first_name,'a','z') from employee_demographics;

-- Locate
select locate("x","Alex");

select first_name,locate("li",first_name) from employee_demographics;

-- Concatenation
select first_name,last_name,
concat(first_name," ",last_name) as full_name
from employee_demographics;
