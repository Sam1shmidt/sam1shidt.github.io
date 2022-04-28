CREATE TABLE friends AS (select employee_id id, first_name name, last_name surname
from employees
where commission_pct is not null);


SELECT * FROM friends;


ALTER TABLE friends ADD(email varchar2(30));

ALTER TABLE friends MODIFY(email varchar2(30) DEFAULT('no email'));

INSERT INTO friends (id, name, surname) VALUES(1, 'Sam', 'Shmidt');

ALTER TABLE friends RENAME COLUMN id TO friends_id;

DROP TABLE friends;

CREATE TABLE friends(
id INTEGER,
name VARCHAR2(15),
surname VARCHAR2(15),
email VARCHAR2(30),
salary NUMBER(8,2) DEFAULT 1000,
city VARCHAR2(15),
birthday DATE DEFAULT ROUND(SYSDATE)
);

INSERT INTO friends VALUES(1, 'Sam', 'Shmidt','samrules', 15000, 'Bataisk', '29-JUN-96');

INSERT INTO friends (id, name, surname, email, city) 
VALUES(2, 'Catelin', 'Novarosso','cate', 'Arcane');

ALTER TABLE friends DROP COLUMN salary;

ALTER TABLE friends SET UNUSED COLUMN email;

ALTER TABLE friends SET UNUSED COLUMN birthday;

ALTER TABLE friends DROP UNUSED COLUMN;

ALTER TABLE friends READ ONLY;

INSERT INTO friends (id, name, surname, city) 
VALUES(3, 'Jora', 'Ren', 'Jop');

DROP TABLE friends;































