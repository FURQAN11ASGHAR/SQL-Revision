select gender
from employee_demographics
group by gender
;

select gender,avg(age),sum(age),count(*),max(age),min(age)
from employee_demographics
group by gender
;

select *
from employee_demographics
order by first_name DESC
;

select *
from employee_demographics
order by age
;

select *
from employee_demographics
order by gender,age
;