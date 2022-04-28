SELECT * FROM employees;
SELECT * FROM departments;
SELECT* FROM countries;
SELECT* FROM REGIONS;

SELECT * FROM employees WHERE INSTR(LOWER(first_name),'b')>0;

SELECT * FROM employees WHERE INSTR(LOWER(first_name),'a',1,2)>0;

SELECT SUBSTR( department_name, 1, INSTR(department_name, ' ')-1) from departments
WHERE INSTR(department_name, ' ')>0;

SELECT SUBSTR(first_name,2, LENGTH(first_name)-2) FROM employees;

select * from employees where length(substr(job_id, instr(job_id,'_')+1))>3
and substr(job_id, instr(job_id,'_')+1) != 'CLERK'; 

SELECT * FROM employees WHERE hire_date = trunc(hire_date,'mm');

SELECT * FROM employees WHERE  '01.JAN.08'= trunc(hire_date,'YY');

SELECT 'Tomorrow is ' || TO_CHAR(SYSDATE+1, 'Ddspth') || ' day of '|| 
TO_CHAR(SYSDATE+1, 'Month')
FROM dual;

SELECT first_name , TO_CHAR(hire_date, 'Ddth')||' of '||
TO_CHAR(hire_date, 'fmMonth') || ', ' ||  TO_CHAR(hire_date, 'YYYY')
from employees;

SELECT first_name, TO_CHAR(salary*1.2, '$9999,999.99') from employees;

SELECT TO_CHAR(SYSDATE, 'DD.MON.YY HH24:MI:SS'),
TO_DATE(SYSDATE, 'DD.MON.YY HH24:MI:SS') + 1/24/60/60
FROM DUAL;

SELECT first_name, salary, salary+TO_NUMBER('$12,345.55','$99,999.99') 
FROM employees;

SELECT first_name, hire_date, 
MONTHS_BETWEEN(TO_DATE('SEP, 18:45:00 18 2009','MON, HH24:MI:SS DD YYYY'),hire_date) 
FROM employees;

SELECT first_name, salary, 
TO_CHAR(salary+NVL(salary*commission_pct, 0),'$99,999.00')  FROM employees;

SELECT first_name, last_name,
NVL2(NULLIF(LENGTH(first_name),LENGTH(last_name)),'different length', 'same length')
FROM employees;

SELECT first_name, commission_pct, NVL2(commission_pct, 'Yes','No') FROM employees;

SELECT first_name, COALESCE(commission_pct, manager_id, salary)
FROM employees;

SELECT first_name, salary,
CASE
WHEN salary<5000 THEN  'Low level'
WHEN salary>=5000 and salary<10000 THEN 'Normal level'
ELSE 'High level'
END salary_level
FROM employees;

SELECT  DECODE(region_id ,1,region_name,2,region_name,3,region_name,4,region_name ) 
from regions;

SELECT 
    CASE
        WHEN region_id=1 THEN region_name
        WHEN region_id=2 THEN region_name
        WHEN region_id=3 THEN region_name
        WHEN region_id=4 THEN region_name
    END
FROM regions;

SELECT first_name, 
    CASE
        WHEN salary<10000 THEN 'BAD'
        WHEN salary>=15000 THEN 'GOOD'
        WHEN salary>=10000 and salary<=15000 or commission_pct is not null THEN 'NORMAL'
    END
FROM employees;
    






