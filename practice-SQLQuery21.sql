--1. Did employee Ms. Davolio ordered anything in 1997 shipped via 2
SELECT * FROM Orders INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID WHERE Employees.LastName = 'Davolio' and Orders.OrderDate LIKE '%1997%' AND Orders.ShipVia = 2
select * from Employees

--2. Which products are supplied from the company 'Exotic Liquids'.
SELECT * FROM Products INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID WHERE Suppliers.CompanyName = 'Exotic Liquids'
SELECT * FROM Suppliers

--3. Territory 'Boston' is located in which region ?
SELECT * FROM Territories INNER JOIN REGION ON Territories.RegionID = Region.RegionID WHERE Territories.TerritoryDescription = 'Boston'
SELECT * FROM Region

--4. Display the total price of all the products ordered, one by one.
SELECT SUM([Order Details].UnitPrice*[Order Details].Quantity),(Products.ProductName) FROM Products INNER JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID GROUP BY Products.ProductName
SELECT * FROM [Order Details]

--5. Did employee Ms. Davolio ordered anything in 1997 shipped via company 'United Package'
SELECT * FROM Employees
SELECT * FROM Orders
SELECT * FROM Shippers

SELECT distinct Employees.LastName FROM Employees INNER JOIN Orders ON employees.EmployeeID = orders.EmployeeID INNER JOIN Shippers ON orders.shipVia = Shippers.ShipperID 
WHERE Employees.LastName = 'Davolio' AND orders.OrderDate LIKE '%1997%' AND Shippers.CompanyName = 'United Package'

SELECT distinct Employees.LastName FROM Employees INNER JOIN Orders ON employees.EmployeeID = orders.EmployeeID and Employees.LastName = 'Davolio' INNER JOIN Shippers ON orders.shipVia = Shippers.ShipperID 
WHERE orders.OrderDate LIKE '%1997%' AND Shippers.CompanyName = 'United Package'


