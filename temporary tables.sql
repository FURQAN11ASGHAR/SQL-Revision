#temporary table
create temporary table salary_above_50
select*
from employee_salary
where salary>=50000
;
select* 
from salary_above_50;