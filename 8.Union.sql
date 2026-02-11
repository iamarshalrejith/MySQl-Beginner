-- Unions
-- query 1
select first_name,last_name from employee_demographics
union 
select first_name,last_name from employee_demographics;

-- query 2
select first_name,last_name,'OLD Male' as Label from employee_demographics
where age > 40 and gender = "Male"
union 
select first_name,last_name,'OLD Female' as Label from employee_demographics
where age > 40 and gender = "Female"
union 
select first_name,last_name,"Highly Paid" as Label from employee_salary
where salary>70000
order by first_name,last_name;
