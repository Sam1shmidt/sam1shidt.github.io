select* from emp1000;
select * from v1000;
select * from syn1000;


CREATE TABLE emp1000 as 
SELECT first_name, last_name, salary, department_id from employees;


CREATE force VIEW v1000 as
select first_name, last_name, salary, department_name, e.city from emp1000 e 
JOIN departments d on (e.department_id=d.department_id);


ALTER TABLE emp1000 add(city varchar2(20));

ALTER VIEW v1000 COMPILE;


CREATE SYNONYM syn1000 for v1000;

drop table emp1000;
drop VIEW v1000;
drop SYNONYM syn1000;

CREATE SEQUENCE seq1000 INCREMENT BY 4 start with 12  MAXVALUE 200 CYCLE;

ALTER SEQUENCE seq1000 NOMAXVALUE NOCYCLE;

INSERT into employees (employee_id, last_name, email, hire_date, job_id)
VALUES (seq1000.nextval, 'Vanov', 'SIMKA', sysdate , 'IT_PROG');

INSERT into employees (employee_id, last_name, email, hire_date, job_id)
VALUES (seq1000.nextval, 'Danov', 'DIMKA', sysdate+1 , 'IT_PROG');

SELECT* FROM employees;















