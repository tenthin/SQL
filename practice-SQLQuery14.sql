
--the first 2 questions are not logical, But Just to get use to few things.

/* 1. What do you mean by a database, relational database, SQL, tuple, stored procedure, Primary key, foreign key, DDL, DML and 
--what is the difference between WHERE and HAVING clause? (Please do not refer to internet or notes to get the definition)
database: a place where you store data
relational database: a place where all data stored are related to each other.
SQL: structured query language: language used to manage data (fetch, modify, delete)
tuple: a single row in the table (a collection of tuple makes a table)
stored procedure: a procedure that can be called or used multiple of times with or without the parameters.
primary key: a column in a table which uniquely identifies a table
foreign key: a column in a table that is primary key for another table
DDL: Data definition language (CREATE, ALTER, DROP)
DQL: data Query language (SELECT)
DML: Data modification language (INSERT, UPDATE, DELETE)
Where: is a conditional statement to get data (cannot use when GROUP BY is used)
Having: is same like WHERE, But only used when GROUP BY is used.*/

--2. Create a new table 'Lhadey' with attributes (Name, Age, Gender_male, DOB, weight, height). (all column data types has to be different)
--but height and weight has to be same datatype. Assign a default value to weight column.
--Next, Populate the table with 5 records, dont give value to weight column (one of the record's age value has to be 26 and one to be 30)
--Then, drop the column 'height'.
--Next, update the weight column value to 143.2 and age to 56 where age value is 26.
--Next, Delete all the record for which age is 30.
--Finally drop the whole table.
--[UNION, INTERSECT, EXCEPT - dont bother about this, this is for my reference.]

-- Display the data from both table Lhadey and Lhadey2.
-- What are the common data between Lhadey and Lhadey2.
-- Get all data from Lhadey except Lhadey2

CREATE TABLE Lhadey(Name varchar(20),Age int,Gender_male bit,DOB datetime,weight float default 55,height float)
CREATE TABLE Lhadey2(Name varchar(20),Age int,Gender_male bit,DOB datetime,weight float default 55,height float)
insert into Lhadey (Name,Age,Gender_male,DOB,height)VALUES ('tsewang',26,1,'1994/4/2',175.5)
insert into Lhadey (Name,Age,Gender_male,DOB,height)VALUES ('thinley',28,1,'1992/4/2',156.2)
insert into Lhadey (Name,Age,Gender_male,DOB,height)VALUES ('gyurmey',30,1,'1990/4/2',162.5)
insert into Lhadey (Name,Age,Gender_male,DOB,height)VALUES ('dakpa',57,1,'1964/4/2',173.4)
insert into Lhadey (Name,Age,Gender_male,DOB,height)VALUES ('tsultrim',54,0,'1969/4/2',170.5)

insert into Lhadey2 (Name,Age,Gender_male,DOB,height)VALUES ('rerer',12,1,'1994/4/2',175.5)
insert into Lhadey2 (Name,Age,Gender_male,DOB,height)VALUES ('wewe',22,1,'1992/4/2',156.2)
insert into Lhadey2 (Name,Age,Gender_male,DOB,height)VALUES ('qwqw',11,1,'1990/4/2',162.5)
insert into Lhadey2 (Name,Age,Gender_male,DOB,height)VALUES ('dakpa',57,1,'1964/4/2',173.4)

ALTER TABLE Lhadey
drop column height

UPDATE Lhadey SET Age = 56, weight = 143.2 WHERE age = 26 

delete from lhadey where age = 30

select * from lhadey UNION
select * from lhadey2
SELECT * FROM Lhadey INTERSECT
SELECT * FROM Lhadey2
SELECT * FROM Lhadey EXCEPT
SELECT * FROM Lhadey2

drop table Lhadey

--3. Get the customerid and contactname of all the customers who are from 'Sweden'
SELECT CustomerID,ContactName FROM Customers WHERE Country ='SWEDEN'

--4. List all the [Order details] records, ordered by ProductID and then OrderID.
SELECT * FROM [Order Details] ORDER BY ProductID,OrderID

--5. Get the Total UnitPrice based on SupplierID from products table where UnitsOnOrder is not 0
SELECT SUM(UnitPrice) AS TOTAL_unitPrice,SupplierID FROM Products where UnitsOnOrder != 0 group by SupplierID

--6. Get the details of top 3 orders which has the hieghtest freight value.
SELECT TOP 3(FREIGHT) FROM Orders ORDER BY Freight DESC

--7. List only the unique OrderID from [Order Details] table.
SELECT DISTINCT OrderID FROM [Order Details]

--8. What is the price of 20 Units of Chai product.
SELECT UnitPrice*20 as price FROM Products where ProductName = 'chai'

--9. Display the details of all the products whose product name contains the word 'Chef'
SELECT * FROM Products WHERE ProductName LIKE '%chef%'

--10. Find all the orders which has orderID 10248 or 10249 or 10250 or 10251 or 10252.
SELECT * FROM Orders WHERE OrderID IN(10248,10249,10250,10251,10252)

--11. Get the Order details where the freight value is between 3.05 and 66.29 but not 3.05 or 66.29.
SELECT * FROM Orders WHERE Freight BETWEEN 3.05 AND 66.29 AND Freight NOT IN (3.05,66.29)
SELECT * FROM Orders WHERE Freight > 3.05 and Freight < 66.29
SELECT * FROM Orders WHERE Freight BETWEEN 3.05 AND 66.29 and (Freight != 3.05 AND Freight != 66.29)



