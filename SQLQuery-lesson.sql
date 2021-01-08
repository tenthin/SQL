CREATE DATABASE narutuShipuden
CREATE TABLE zasuke (shringan varchar(20), chakra int)
DROP DATABASE narutuShipuden
select * FROM zasuke
alter table zasuke drop column something 

insert into zasuke values ('tree', 23)
insert into zasuke values ('someithng', 2)
insert into zasuke values ('tsewang', 233)

Truncate table zasuke
delete from zasuke


exec sp_rename 'zasuke', 'new_table_name'

create procedure oops
as
BEGIN

select * FROM zasuke

END

exec oops
