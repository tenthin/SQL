--1. I want all the data from Territories table but also matching territoryID from EmployeeTerritories table. (and vice-versa)
SELECT * FROM Territories RIGHT JOIN EmployeeTerritories ON Territories.TerritoryID = EmployeeTerritories.TerritoryID
SELECT * FROM EmployeeTerritories

--2. Employee Ms. Dodsworth lives in which territory ?
SELECT EmployeeTerritories.TerritoryID FROM Employees RIGHT JOIN EmployeeTerritories ON Employees.EmployeeID = EmployeeTerritories.EmployeeID WHERE Employees.LastName = 'Dodsworth'
SELECT * FROM EmployeeTerritories

--3. Does supplier 'PB Knäckebröd AB' supply products which belongs to category 'Confections' ?
SELECT * FROM Suppliers INNER JOIN Products ON Suppliers.SupplierID = Products.SupplierID INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Suppliers.CompanyName = 'PB Knäckebröd AB' AND Categories.CategoryName = 'Confections'
SELECT * FROM Suppliers 
SELECT * FROM Products
SELECT * FROM Categories

--4. Do we have any order for product 'Uncle Bob's Organic Dried Pears' for more than total price 20000 rupees ?
IF EXISTS (SELECT SUM([Order Details].UnitPrice*[Order Details].Quantity) FROM Products INNER JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID WHERE Products.ProductName = 'Uncle Bob''s Organic Dried Pears')
BEGIN 
SELECT 1 AS YES
END
  
SELECT * FROM [Order Details]

--5. Does Supplier 'Nord-Ost-Fisch Handelsgesellschaft mbH' supplies meat products ?
SELECT * FROM Suppliers
SELECT * FROM Orders
SELECT * FROM [Order Details]
SELECT * FROM Categories
select * from Products
