-- Case Statements

select first_name, last_name, age,
case
	when age<=30 then 'young'
    when age<=50 then "Old"
    when age>50 then "On Death's Door"
end as Age_bracket
from employee_demographics;

-- Pay increase and bonus
-- < 50000 - 5% increase
-- > 50000 - 7% increase
-- finacne - 10% bonus

select first_name, last_name, salary ,occupation,
case 
	when salary < 50000 then salary + (salary * 0.05)
    when salary > 50000 then salary + (salary * 0.07)
end as New_salary,
case 
	when dept_id = 6 then salary * 0.10
end as Bonus
from employee_salary;

