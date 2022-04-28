CREATE TABLE address(
id integer CONSTRAINT ad_in_un UNIQUE,
country varchar2(30),
city varchar2(30)
);
CREATE TABLE friends(
id INTEGER,
name VARCHAR2(30),
email VARCHAR2(30),
address_id integer CONSTRAINT f_k_a_i REFERENCES address(id) ON DELETE SET NULL ,
birthday date,
CONSTRAINT l_n CHECK (length(name)>3)
);

CREATE UNIQUE INDEX in1 on friends(id);

ALTER TABLE friends add CONSTRAINT fr_id_pk PRIMARY KEY (id);

CREATE INDEX fr_email_in on friends(email);

ALTER TABLE friends MODIFY(email CONSTRAINT fr_email_nn not null);
select * from friends; 
select * from address; 
DROP TABLE friends;

DROP TABLE address;
