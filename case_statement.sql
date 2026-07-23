#--case statement
select first_name,
age,
case
	when age<=35 then 'young'
    when age between 36 and 50 then 'OLD'
    when age>50 then 'geaser'
end as Ages
from employee_demographics
;
select
first_name,
last_name,
salary,
case
	when salary<50000 then salary+(salary*0.05)
    when salary>=50000 then salary+(salary*0.07)
     when dept_id=6 then salary+(salary*0.10)
end as new_salary
from employee_salary
;