# WHERE Clause - Helps to filter our records or rows of data

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE first_name = "Leslie"; # only leslie record

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE first_name != "Leslie"; # except leslie record output all records

# Filtering by salary above 50000
SELECT * FROM parks_and_recreation.employee_salary
WHERE salary > 50000;

# Filtering by gender (male)
SELECT * FROM parks_and_recreation.employee_demographics WHERE gender != 'Female';

# Filtering by date
SELECT * FROM parks_and_recreation.employee_demographics WHERE birth_date > '1985-01-01' ;

-- AND OR NOT -> logical operators
-- AND
SELECT * FROM parks_and_recreation.employee_demographics 
WHERE birth_date > '1985-01-01' AND gender = 'male';

-- OR
SELECT * FROM parks_and_recreation.employee_demographics 
WHERE birth_date > '1985-01-01' OR gender = 'male';

-- NOT
SELECT * FROM parks_and_recreation.employee_demographics 
WHERE birth_date > '1985-01-01' OR NOT gender = 'male';

-- Applies PEMDAS rule here too
SELECT * FROM parks_and_recreation.employee_demographics 
WHERE (first_name = "Leslie" AND age=44) OR age > 55;

-- LIKE Statment - use this when we are looking for specific patterns with exact match
-- % (anything) and _ (means a specific value)

-- %
SELECT * FROM parks_and_recreation.employee_demographics WHERE first_name LIKE 'Jer%'; # return any records whose name starts like Jer

-- _
SELECT * FROM 
parks_and_recreation.employee_demographics 
WHERE first_name LIKE 'a__'; #only return record with a and total underscore matching values.here 2 underscores so with two filling underscore values

-- using % and _ together
SELECT * FROM parks_and_recreation.employee_demographics WHERE first_name LIKE 'A__%';