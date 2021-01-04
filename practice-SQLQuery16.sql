--1. Which category in Categories comes under non-veg ?
select * from Categories where Description LIKE '%meat%' or Description LIKE '%fish%' or Description LIKE '%beef%'

--2. Show the list of all customers in an ascending order of CompanyName and then ContactName.
select * from Customers order by CompanyName,ContactName asc

--3. Display the number of customers in each country where the number of customers are greater than 5,
    --order in descending order of the number of customers.
select count(country) as customer_no,Country from customers group by Country having Count(country)>5 ORDER BY customer_no desc


--4. How many customers have placed orders so far ?
select count(distinct CustomerID) as customer_count FROM Orders

--5. Display all the records from Products which has the same supplier ID and category ID Or has more than 99 Units in Stock.
SELECT * FROM Products WHERE SupplierID = CategoryID OR UnitsInStock > 99

--6. Create a Stored Procedure that accepts 2 parameters : UnitPrice and SupplierID. This Stored Procedure should be returning all the 
--   product details for that supplierID passed and Unitprice higher or equal to that which will be passed while executing the Stored Procedure.
CREATE PROCEDURE timetravel @UnitPrice money, @SupplieerID int
AS
SELECT * FROM Products WHERE SupplierID = @SupplieerID and UnitPrice >=@UnitPrice

drop procedure timetravel

--7. Execute the above Stored Procedure with UnitPrice as 89 and supplierID as 5.
EXEC timetravel 89,5

--8. Get the number of Territory for the each Region ID.
select count(TerritoryID) as territory,RegionID from Territories group by RegionID

--9. Is there any supplier from France or Denmark who has not mentioned their Fax number ?   
select * from Suppliers where (country ='france' or country ='denmark') AND Fax is NULL

sp_help Suppliers

--10.What is the name of the product which has the highest UnitPrice and whether that product is still running or not ?
select top 1 ProductName, Discontinued,
case 
	when Discontinued = 0 then 'still running'
	when Discontinued = 1 then 'not running'
end as status
from products Order by UnitPrice desc

/*max, min,count, avg, sum.. aggregate functions.. only used during group by and then use HAVING for group by, not WHERE.*/