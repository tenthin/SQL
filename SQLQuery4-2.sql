

-- 1. Create a table "City" with columns as Country, PinCode, CurrentDateTime and Temperature.
-- 2. List all the Primary key columns from all the tables in NorthWind.
-- 3. Name all the female employes who are from 'Seattle' and married.
-- 4. Fetch all the orderIDs which are ordered after 1997 or shipped from 'Portland'
-- 5. Name all the Customers who are not from 'Berlin'
create table city ( country varchar(20), pincode char(5), currentdatetime datetime, temperature decimal)
SELECT * FROM CITY
sp_help CITY

SELECT CustomerID FROM Customers
SELECT EmployeeID FROM Employees
SELECT OrderID FROM [Orders]
SELECT ProductID FROM Products
SELECT ShipperID FROM Shippers
SELECT TerritoryID FROM Territories

SELECT LastName,FirstName FROM Employees WHERE City = 'Seattle' and TitleOfCourtesy = 'Mrs.'
SELECT * FROM Employees

SELECT OrderID FROM Orders WHERE OrderDate > '1997'or ShipCity = 'portland'

Select ContactName from Customers where not(city = 'berlin')