CREATE TABLE test200(
id INTEGER,
name1 varchar2(20),
name2 varchar2(20),
address1 varchar2(30),
address2 varchar2(30)
);

UPDATE test200 SET &col = &val1 where id = &val2;


select * from test200 where
name1 = name2 and
address1 = address2;

select * from test200 where
name1 = '&&val1' and name2 = '&val1' and
address1 = '&&val2' and address2 = '&val2';

undefine val1;
undefine val2;