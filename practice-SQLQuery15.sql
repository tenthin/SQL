--1. Create a Stored Procedure (with a proper name) which can be used to display all the orders from a dynamic value of shipcountry, 
--and a dynamic value of employeeID and freight between dynamic value of freight passed in the parameters.
create procedure Shipp 
@Shipcountry nvarchar(20), @employeeID int, @freight money
AS
SELECT ShipCountry,EmployeeID,freight FROM Orders WHERE Shipcountry = @Shipcountry and employeeID = @employeeID and freight between @freight and @freight + 105
drop procedure Ship
	  
--2. Execute your Stored Procedure with parameter values ; Shipcountry = Germany, EmployeeID = 4 and Freight range from 15 to 120 
EXEC Shipp 'GERMANY',4, 15

--3. If there exists an order record from shipcountry as 'Portugal' then display all orders from shipcountry 'Tibet', Else.. if there exists
--orders with freight value higher than 120 then display all orders of customer whose ID is 'RATTC' Else.. if there is no record of orders
--with shipcountry as 'Canada' then display all orders shipped via 3 Else.. Get all orders shipped via 1 or 2.	
SELECT * FROM Orders

IF EXISTS (SELECT * FROM Orders WHERE ShipCountry ='PORTUGAL')
BEGIN
SELECT * FROM Orders WHERE ShipCountry='TIBET'
END
ELSE IF EXISTS (SELECT * FROM Orders WHERE Freight>120)
BEGIN
SELECT * FROM Orders WHERE CustomerID='RATTC'
END
ELSE IF NOT EXISTS( SELECT * FROM Orders WHERE ShipCountry = 'canada')
BEGIN
SELECT * FROM ORDERS WHERE ShipVia = 3
END 
ELSE 
BEGIN
SELECT * FROM Orders WHERE ShipVia= 1 OR ShipVia= 2
END

--4. From Order Details table, for all orders with Quantity less than 35, show "quantity less than 35" in a new Description column,
--Likewise, for all orders with Quantity equals to 35, show "quantity is 35" in description column and
--for for orders with quantity above 35, show "Quantity more than 35" in the description column.	
SELECT * FROM [Order Details]

SELECT QUANTITY,
CASE 
	WHEN QUANTITY < 35 THEN 'QUANTITY LESS THAN 35'
	WHEN QUANTITY = 35 THEN 'QUANTITY IS 35'
	WHEN QUANTITY > 35 THEN 'QUANTITY MORE THAN 35'
END AS HOW_MUCH
FROM [Order Details]
 
--5. For our company data analysis, we need to find out the average freight value of each shipcountry from Orders which are not Shippedvia 1
SELECT * FROM Orders

SELECT AVG(FREIGHT) AS AVG_VALUE,ShipCountry FROM Orders WHERE ShipVia != 1 GROUP BY ShipCountry