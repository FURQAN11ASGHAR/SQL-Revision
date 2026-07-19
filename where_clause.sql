#WHERE clause
select *
from employee_salary
where first_name='Tom';

select *
from employee_salary
where salary>55000;

select *
from employee_demographics
where gender!='male';

select *
from employee_demographics
where birth_date<'1980-01-01'
AND age>50
;

select *
from employee_demographics
where birth_date>'1987-01-01'
OR NOT gender='male'
; 

select *
from employee_demographics
where (first_name='donna' AND age=46) OR age between 42 and 50    #(age<50 AND age>42)
;
#--like statment (_ & %)
select *
from employee_demographics
where age like '4%'
;
 select *
from employee_demographics
where (first_name like '_a%') or (birth_date like '198%')
;
