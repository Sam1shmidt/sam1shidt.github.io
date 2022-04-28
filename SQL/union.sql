select manager_id, to_char(null) job_id , to_number(null) dep_id,  sum(salary) 
from employees 
group by manager_id
UNION
select to_number(null), job_id, to_number(null), sum(salary) 
from employees
group by job_id
UNION
select to_number(null), to_char(null), department_id, sum(salary) 
from employees
group by department_id;


select department_id from employees where manager_id = 100
MINUS
select department_id from employees where manager_id = 145 and manager_id = 201;


select distinct first_name, last_name, salary from employees
where first_name like '_a%'
intersect
select distinct first_name, last_name, salary from employees
where lower(last_name) like '%s%'
order by salary desc;


select location_id, postal_code, city from locations
where upper(country_id) = 'IT'
union
select location_id, postal_code, city from locations
where upper(country_id) = 'DE'
union 
select location_id, postal_code, city from locations
where postal_code like '%9%';

select country_id id, country_name country, region_id region from countries 
where length(country_name) > 8 
union
select * from countries 
where region_id != (select region_id from regions 
where UPPER(region_name) = 'EUROPE')
order by country desc;












