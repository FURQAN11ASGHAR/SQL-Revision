#--string functions
#1->length
select length('furqan'); #6

select first_name,length(first_name)
from employee_demographics
order by 2
;
#upper & lower
select first_name,upper(first_name)
from employee_demographics
order by 1;
select first_name,lower(first_name)
from employee_demographics
order by 1;

#trim
select trim('       harry    ') ;
select ltrim('       harry    ') ;
select rtrim('       harry    ') ;

#substring
select first_name,
left(first_name,3),
right(first_name,3)
from employee_demographics
;
select first_name,substring(first_name,2,4)
from employee_demographic
;

select first_name,birth_date, substring(birth_date,6,2) as month_birth
from employee_demographics
;

#replace and locate
select locate('a','furqan')
;
select first_name, replace(first_name,'om','zz')
from employee_demographics;

select first_name, 
locate('om',first_name) as located
from employee_demographics;

#concat
select first_name,last_name,
concat(first_name,' ',last_name) as full_name
from employee_demographics;