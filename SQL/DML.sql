CREATE TABLE locations2 AS (SELECT * FROM locations WHERE 1=2);
select * from locations2;
select * from locations;
select * from countries;
select* from regions;

INSERT INTO locations2 (location_id, street_address, 
city, country_id) values 
(3300, '1234 Sagan', 'Palermo', 'IT' );
INSERT INTO locations2 (location_id, street_address, 
city, country_id) values 
(3400, '4321 Toran', 'Verona', 'IT' );

commit;

INSERT INTO locations2 values 
(3500, '4567 Rapan', '12345', initcap('Paris'), 'Province 1',  upper('FR') );
INSERT INTO locations2 values 
(3600, '7654 Rapan', '43215', initcap('nizza'), 'Province 1',  upper('FR') );
commit;

insert INTO locations2 l2 (select * from locations  where length(state_province)>9);
commit;

CREATE TABLE locations4europe AS (SELECT * FROM locations WHERE 1=2);
select * from locations4europe;

insert all
when 5=5 then
into locations2 
values (location_id, street_address, postal_code, city, state_province, country_id)
when country_id in ( select country_id from countries where region_id = 1) then
INTO locations4europe (location_id, street_address, city, country_id)
VALUES (location_id, street_address, city, country_id)
select * from locations;
commit;

update locations2 set postal_code = 12345 where postal_code is null;
rollback;

update locations2 set postal_code = (select postal_code from locations 
where location_id = 2600) where postal_code is null;
commit;

DELETE locations2 where country_id = 'IT';
SAVEPOINT s1;

update locations2 set street_address = 'Sezam st. 18' where location_id > 2500;
SAVEPOINT s2;

delete locations2 where street_address = 'Sezam st. 18';

ROLLBACK to s1;

commit;
























