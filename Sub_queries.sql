#--sub_queries
select *
from employee_demographics
where employee_id in(
					select employee_id
                    from employee_salary
                    where dept_id=1
);
select first_name,occupation,salary,
	(select avg(salary) 
	from employee_salary
	)as avrgsal
from employee_salary
;

SELECT AVG(max_age) 
FROM
(
    SELECT gender, MAX(age) AS max_age
    FROM employee_demographics
    GROUP BY gender
) AS Agg_table;

