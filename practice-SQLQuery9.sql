---- Create a table named 'Example' with columns containing data types having 'string', 'Numeric','date','time' and 'datetime'. 
--   and with one column having a 'default value'.
---- Drop one of the columns
---- Insert 3 different records into that table.
---- Update any one column from the first record in the table.
---- Delete the fist updated record in from the table.
---- Delete the whole table.

CREATE TABLE example(Name VARCHAR(20),Age int,DateOfBirth datetime,Hr Time,Day CHAR(20) DEFAULT 'WEDNESDAY')
SELECT * FROM example
ALTER TABLE example
DROP COLUMN Age
INSERT INTO example(NAME,DATEOFBIRTH,HR)
VALUES('JAN','12/13/1','12:00')
INSERT INTO example(NAME,DATEOFBIRTH,HR)
VALUES('MARCH','2122-1-3','11:00')
INSERT INTO example(NAME,DATEOFBIRTH,HR)
VALUES('APRIL','2012-11-10','10:00')
UPDATE example SET NAME ='may',DateOfBirth = '12/12/12' WHERE 



---- Create 2 tables A and B with 3 columns of any datatype but both table definition has to be same. 
--   Insert 3 records in B and 4 records in A, 
---- and the extra 4th records should be same to one of the records in B. Dont drop these 2 tables.
CREATE TABLE A(Name VARCHAR(20),Gender CHAR(1),Marks FLOAT)
INSERT INTO A VALUES('TENZIN','M',12.2)
INSERT INTO A VALUES('SAPO','M',23.3)
INSERT INTO A VALUES('ASSF','M',90.3)
INSERT INTO A VALUES('WWFSA','F',234.2)

CREATE TABLE B(Name VARCHAR(20),Gender CHAR(1),Marks FLOAT)
INSERT INTO B VALUES('TENZIN','M',12.2)
INSERT INTO B VALUES('THAPA','M',19.2)
INSERT INTO B VALUES('ZINGZANG','F',2.2)

SELECT * FROM A
SELECT * FROM B

