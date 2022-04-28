select * from employees where length(first_name)=(select MAX(length(first_name)) 
from employees);

select * from employees where salary > (select AVG(salary) from employees);

select city from employees e 
    join departments d on (e.department_id= d.department_id)
    join locations l on (d.location_id=l.location_id)
group by city
having SUM(salary) = (select MIN(SUM(salary)) from employees e
        join departments d on (e.department_id= d.department_id)
        join locations l on (d.location_id=l.location_id)
    group by city);
    
select * from employees where manager_id in (select employee_id
    FROM employees
    WHERE salary>15000);

select * from departments;
select * from employees;
select * from departments where department_id not in (select distinct department_id
                                                    from employees
                                                    where department_id IS not NULL);


select * from employees where employee_id not in (select distinct manager_id FROM employees
                                            where manager_id is not null);
                                            

select * from employees e where (select count(*) from employees
                                where manager_id=e.employee_id)>6;
                                
                                
select * from employees where department_id = (select department_id FROM departments
                                              WHERE department_name = upper('it'));
                                              
                                              
select * from employees where manager_id in (select employee_id
    FROM employees where to_char(hire_date, 'YYYY') = '2005')
    and hire_date< to_date('01012005', 'DDMMYYYY');


select * from employees e where manager_id in (select employee_id FROM employees
                                            where to_char (hire_date,'MM')='01')
    and (select length(job_title) from jobs where job_id = e.job_id)>15;









