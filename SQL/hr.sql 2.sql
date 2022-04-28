SELECT * FROM employees;
SELECT * from countries;

SELECT count(*),  department_id, MIN(salary) min, MAX(salary) max, MIN(hire_date) min_date, 
MAX(hire_date) max_date
FROM employees
GROUP BY  department_id
ORDER BY count(*) desc;

SELECT LPAD(first_name, 1), COUNT(LPAD(first_name, 1)) how from employees
GROUP BY LPAD(first_name, 1)
HAVING  COUNT(LPAD(first_name, 1))>1
ORDER BY  how desc
;

SELECT department_id, salary, count(*) from employees
GROUP BY department_id, salary;

SELECT TO_CHAR(hire_date, 'DAY'), COUNT(TO_CHAR(hire_date, 'DAY'))
FROM employees
GROUP BY TO_CHAR(hire_date, 'DAY');

SELECT department_id from employees
GROUP BY department_id
HAVING COUNT(*)>30 AND SUM(salary)>300000;

SELECT region_id from countries
GROUP BY region_id
HAVING SUM(LENGTH(country_name))>50;

SELECT job_id, AVG(salary) from employees
GROUP BY job_id;

SELECT department_id from employees
GROUP BY department_id
HAVING COUNT(DISTINCT job_id)>1;

SELECT department_id, job_id, MIN(salary), MAX(salary) FROM employees
GROUP BY department_id, job_id
HAVING AVG(salary)> 10000;

SELECT manager_id from employees
WHERE commission_pct is null
GROUP BY manager_id
HAVING  AVG(salary) BETWEEN 6000 and 9000;

SELECT ROUND(MAX(AVG(salary)), -3) from employees
GROUP BY department_id;
















