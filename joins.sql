#--joins
#inner
select *
from employee_demographics;

select *
from employee_salary;

select * 
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
;

select dem.employee_id,dem.first_name,age, occupation
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
;

#--outer join
select *
from employee_demographics as dem
left join employee_salary as sal
	on dem.employee_id = sal.employee_id
;
select *
from employee_demographics as dem
right join employee_salary as sal
	on dem.employee_id = sal.employee_id
;

#--multiple joins
select *
from parks_departments
;
select *
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
inner join parks_departments as pd
	on sal.dept_id=pd.department_id
;
