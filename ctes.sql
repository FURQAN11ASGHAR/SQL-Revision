select gender,avg(salary),max(salary),count(*),avg(age),min(salary)
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id=sal.employee_id
group by gender
;


#--ctes
with cte_example as
(
select gender,avg(salary)as avg_sal,max(salary)as max_sal,count(*)as count,avg(age)as avg_age,min(salary)as min_sal
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id=sal.employee_id
group by gender
)
select avg(avg_sal)
from cte_example
;
#cte make things easy for writing sub-queries-
#without cte it would look like this
select avg(avg_sal)
from (
select gender,avg(salary)as avg_sal,max(salary)as max_sal,count(*)as count,avg(age)as avg_age,min(salary)as min_sal
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id=sal.employee_id
group by gender) as ex_table;
#more
with cte_example as
(
select employee_id,gender,birth_date
from employee_demographics 
where birth_date > "1985-01-01"
),
cte_example2 as
(select employee_id,salary
from employee_salary
where salary>50000
)
select*
from cte_example
join cte_example2
	on cte_example.employee_id=cte_example2.employee_id
;
    
#we can also write aliases like this
with cte_example(gender,avg_sal,max_sal,count_,avg_age,min_sal) as
(
select gender,avg(salary),max(salary),count(*),avg(age),min(salary)
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id=sal.employee_id
group by gender
)
select *
from cte_example
;
    