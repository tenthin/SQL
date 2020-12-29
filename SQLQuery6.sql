CREATE TABLE nulll(age char(3))
insert into nulll (age) values ('3')
select * from nulll

UPDATE nulll SET age = '0' WHERE age = ' ' or age ='nan'

CREATE TABLE [times](Hr time, Days varchar(10))
INSERT INTO [times] (Hr,Days) VALUES('2:00','wed')
select * from times