-- Limit and aliasing

-- limit the output shown
select * from parks_and_recreation.employee_demographics
limit 3;

-- limit can be done with order clause
-- age will be arranged in descending order.from that top 3
select * from parks_and_recreation.employee_demographics
order by age desc
limit 3;

-- limit with offset and row count. (offset skips,row count remaining of specified value)
select * from parks_and_recreation.employee_demographics
order by age desc
limit 3,1; -- offset = 3 → skip the first 3 rows.So row_count = 1 → then return 1 row.here 4th row returned

-- aliasing
select gender,avg(age) as avg_age
from parks_and_recreation.employee_demographics
group by gender
having avg_age > 40
 