SELECT * FROM parks_and_recreation.employee_demographics; # Selects the whole table and outputs it

SELECT employee_id,first_name FROM parks_and_recreation.employee_demographics; # We can select custom cols also.

SELECT employee_id,
first_name,
age,
(age+10) * 10 + 10 # MySQL Follows PEMDAS rule - parenthesis,exponent,mul,div,add,sub
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT gender from parks_and_recreation.employee_demographics; # outputs only unique values

SELECT DISTINCT first_name,gender from parks_and_recreation.employee_demographics; # groups the cols and outputs the unique values alone.

