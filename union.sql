#--unions->used to join rows from different tables
Select first_name,last_name
from employee_demographics
union   #BY default union gives distinct values not the same values
select first_name,last_name
from employee_salary
;
#to get all not distinct
Select first_name,last_name
from employee_demographics
union  all #gives all including the duplicates
select first_name,last_name
from employee_salary
;

#lets see an example where we want select old emplyees and employees with high salaries
select first_name,last_name, 'old' as label
from employee_demographics
where age>40
union
select first_name,last_name, 'highly paid' as label
from employee_salary
where salary>70000
;
#lets see an example where we want select old emplyees and employees with high salaries(both male and female)
select first_name,last_name, 'old man' as label
from employee_demographics
where age>40 and gender ='male'
union
select first_name,last_name, 'old lady' as label
from employee_demographics
where age>40 and gender = 'female'
union
select first_name,last_name, 'highly paid' as label
from employee_salary
where salary>70000
order by first_name
;