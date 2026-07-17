select first_name,
last_name,
dept_id
from parks_and_recreation.employee_salary
where salary>=55000;

select first_name,
last_name,
dept_id,
dept_id + 3 as updated_id
from parks_and_recreation.employee_salary
;

select distinct gender,first_name
from parks_and_recreation.employee_demographics;

select distinct gender
from parks_and_recreation.employee_demographics;
