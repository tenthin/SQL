--the first 2 questions are not logical, But Just to get use to few things.

--/* 1. What do you mean by a database, relational database, SQL, tuple, stored procedure, Primary key, foreign key, DDL, DML and 
--what is the difference between WHERE and HAVING clause? (Please do not refer to internet or notes to get the definition)
database: a place where you store data
relational database: 
SQL: structured query language: language used to manage data
tuple: all the rows in the table
stored procedure: a function that can be called or used multiple of times
primary key: a value that is unique to every rows
foreign key: 
DDL:
DML:
Where: is used to describe a certain line of code 
Having: mainly used for conditional purpose

--2. Create a new table 'Lhadey' with attributes (Name, Age, Gender, DOB, weight, height). (all column data types has to be different)
--but height and weight has to be same datatype. Assign a default value to weight column.
--Next, Populate the table with 5 records, dont give value to weight column (one of the record's height value has to be 175.5 and one to be 156.2)
--Then, drop the column 'weight'.
--Next, update the height column value to 143.2 and age to 56 where height value is 175.5.
--Next, Delete all the record for which height is 156.2.
--Finally drop the whole table.
--[UNION, INTERSECT, EXCEPT - dont bother about this, this is for my reference.]
CREATE TABLE Lhadey(Name varchar(20),Age int,Gender_male bit,DOB datetime,weight float default 55,height float)
insert into Lhadey (Name,Age,Gender_male,DOB,height)
VALUES ('center',50,1,'1963/4/2',159.2)

ALTER TABLE Lhadey
DROP COLUMN weight

UPDATE Lhadey SET Age = 56, height = 143.2 WHERE height = 175.5 

select * from lhadey
drop table Lhadey

--3. Get the customerid and contactname of all the customers who are from 'Sweden'
SELECT CustomerID,ContactName FROM Customers WHERE Country ='SWEDEN'

--4. List all the [Order details] records, ordered by ProductID and then OrderID.
SELECT * FROM [Order Details] ORDER BY ProductID,OrderID

--5. Get the Total UnitPrice based on SupplierID from products table where UnitsOnOrder is not 0
SELECT SUM(UnitPrice),SupplierID FROM Products where UnitPrice != 0 group by SupplierID

--6. Get the details of top 3 orders which has the hieghtest freight value.
SELECT TOP 3(FREIGHT) FROM Orders ORDER BY Freight DESC

--7. List only the unique OrderID from [Order Details] table.
SELECT DISTINCT OrderID FROM [Order Details]

--8. What is the price of 20 Units of Chai product.
SELECT UnitPrice*20 FROM Products where ProductName = 'chai'

--9. Display the details of all the products whose product name contains the word 'Chef'
SELECT * FROM Products WHERE ProductName LIKE '%chef%'

--10. Find all the orders which has orderID 10248 or 10249 or 10250 or 10251 or 10252.
SELECT * FROM Orders WHERE OrderID IN(10248,10249,10250,10251,10252)

--11. Get the Order details where the freight value is between 3.05 and 66.29 but not 3.05 or 66.29.
SELECT * FROM Orders WHERE Freight BETWEEN 3.05 AND 66.29 ORDER BY Freight
