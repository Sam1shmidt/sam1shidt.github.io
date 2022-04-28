select * from regions;
select * from countries;
select * from departments;
select * from employees;
select * from locations;

select region_name, count(*) 
    from employees e 
        join departments d on (e.department_id = d.department_id)
        join locations l on (d.location_id = l.location_id)
        join countries c on (l.country_id = c.country_id)
        join regions r on (c.region_id = r.region_id)
group by region_name;


select e.first_name, e.last_name, d.department_name, e.job_id, c.country_name,
r.region_name, l.street_address
    from employees e 
        join departments d on (e.department_id = d.department_id)
        join locations l on (d.location_id = l.location_id)
        join countries c on (l.country_id = c.country_id)
        join regions r on (c.region_id = r.region_id);
        

select m.first_name, count(*) from employees e 
join employees m on (m.manager_id = e.manager_id) 
group by m.first_name
having count(*)>6;


select d.department_name, count(*) from departments d join employees 
using (department_id)
GROUP by d.department_name
HAVING count(*)>30;

select d.department_name from departments d left outer join employees e on 
(e.department_id = d.department_id)
where e.first_name is null;

select e.* from employees e
join employees j on (e.manager_id=j.employee_id)
where to_char(j.hire_date, 'YYYY') = '2005' 
and e.hire_date < to_date('01-01-2005', 'DD-MM_YYYY');


select country_name, region_name from countries  NATURAL JOIN regions ;

select first_name, last_name, salary from employees e join jobs j 
on (e.job_id= j.job_id and j.min_salary+1000<e.salary);

select DISTINCT first_name, last_name, country_name from employees e 
full OUTER join departments d on (e.manager_id = d.manager_id)
full OUTER join locations l on (d.location_id = l.location_id)
full OUTER join countries c on (l.country_id= c.country_id);

select first_name, last_name, country_name from employees 
cross join countries;

select region_name, count(*) 
from employees e, departments d, locations l, countries c, regions r 
where (e.department_id = d.department_id and
    d.location_id = l.location_id and
    l.country_id = c.country_id and
    c.region_id = r.region_id)
group by region_name;

select d.department_name from departments d, employees e  
where e.department_id (+) = d.department_id and
    e.first_name is null;


