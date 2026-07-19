#where filter rows & used before group by
select occupation, avg(salary)
from employee_salary
where occupation like '%manager%'
group by occupation
;

#Having filters groups after using group by
select occupation, avg(salary)
from employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) >80000
;

#Aliasing 
select gender, avg(age) as avg_age
from employee_demographics
group by gender
having avg_age>40
;