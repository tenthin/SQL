--1. Which customer has ordered from France?
SELECT * FROM Customers RIGHT JOIN Orders ON Customers.CustomerID = ORDERS.CustomerID WHERE Customers.Country = 'FRANCE'
SELECT * FROM Orders

--2. Which customer has ordered Product with ProductID 11 ?
SELECT * FROM Customers RIGHT JOIN ORDERS ON Customers.CustomerID = Orders.CustomerID INNER JOIN [Order Details] ON ORDERS.OrderID = [Order Details].OrderID WHERE [Order Details].ProductID = 11 
SELECT * FROM Orders
SELECT * FROM [Order Details]

--3. Which customer has ordered the product 'Queso Cabrales' ?
SELECT * FROM Customers RIGHT JOIN Orders ON CUSTOMERS.CustomerID = Orders.CustomerID INNER JOIN [Order Details] ON ORDERS.OrderID = [Order Details].OrderID INNER JOIN Products ON [Order Details].ProductID = Products.ProductID 
WHERE PRODUCTS.ProductName = 'Queso Cabrales'

SELECT * FROM Orders
SELECT * FROM [Order Details]
SELECT * FROM Products


--4. Who supplies the product 'Queso Cabrales' ?
SELECT * FROM Suppliers LEFT JOIN Products ON Suppliers.SupplierID = Products.ProductID WHERE Products.ProductName = 'Queso Cabrales'
SELECT * FROM Products

--5. The product 'Queso Cabrales' comes under which category ?
SELECT * FROM Categories LEFT JOIN Products ON Categories.CategoryID = Products.CategoryID WHERE Products.ProductName = 'Queso Cabrales'
SELECT * FROM Products
