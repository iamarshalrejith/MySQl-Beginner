SELECT * from parks_and_recreation.employee_demographics;

-- GROUP BY
SELECT gender from parks_and_recreation.employee_demographics GROUP BY gender;  -- Rolls up the common

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age) from parks_and_recreation.employee_demographics GROUP BY gender; 

SELECT occupation, salary from parks_and_recreation.employee_salary GROUP BY occupation,salary; 

-- ORDER BY
SELECT * from parks_and_recreation.employee_demographics order by  age;

SELECT * from parks_and_recreation.employee_demographics order by gender,age; -- If i kept age first and gender next only age col is sorted since it has unique values and gender becomes useless

SELECT * from parks_and_recreation.employee_demographics order by  age desc;