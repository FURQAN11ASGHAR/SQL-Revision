#--window functions
#--without window function
select gender,avg(salary) as sal_avg
from employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id
group by gender
;
select dem.first_name,dem.last_name,gender,avg(salary) over(partition by gender) as avg_sal
from employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id
;
select dem.first_name,dem.last_name,gender,
salary,
avg(salary) over(partition by gender) as avg_sal,
sum(salary) over(partition by gender) as sum_sal
from employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id
;
#rolling total
select dem.first_name,dem.last_name,gender,
salary,
sum(salary) over(partition by gender order by dem.employee_id) as rolling_total
from employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id
;
select dem.first_name,dem.last_name,gender,
salary,
row_number() over(partition by gender order by salary desc) as row_num,
rank() over(partition by gender order by salary desc) as Rank_num,
DENSE_RANK() over(partition by gender order by salary desc) as Dense_Rank_num
from employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id
;
