--1. Which products has a discount but is still not discontinued.
SELECT * FROM Products INNER JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID WHERE [Order Details].Discount !=0 AND Products.Discontinued != 0
SELECT * FROM [Order Details]

--2. Which products come under SeaFood Category.
SELECT * FROM Products INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID WHERE Categories.Description LIKE 'SEAWEED AND FISH' 
SELECT * FROM Categories

--3. What products does the supplier company 'Pavlova, Ltd.' supply.
SELECT * FROM Products INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID WHERE Suppliers.CompanyName = 'Pavlova, Ltd.'
SELECT * FROM Suppliers

--4. Which products contain cheese in them ?
SELECT * FROM Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID WHERE Categories.Description LIKE 'CHEESES'
SELECT * FROM Products

--5. What are the products supplied from USA and what is the companyName ?
SELECT * FROM Products INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID WHERE Suppliers.Country = 'USA'
SELECT * FROM Suppliers

