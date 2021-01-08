--1. Did Customer 'Maria Anders' placed any orders ?
IF EXISTS (Select * from Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID WHERE CUSTOMERS.ContactName = 'MARIA ANDERS')
SELECT 'MARIA HAS PLACED ORDER' AS EXIST 
ELSE 
SELECT 'MARIA HAS NOT PLACED ORDER' AS EXIST

--2. Who are all the customers whose orders are shippedVia 2.
SELECT * FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID WHERE orders.ShipVia = 2
SELECT * FROM Orders

--3. Name all the customers whose orders are shipped before '1997-02-24 00:00:00.000'
SELECT * FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID WHERE ShippedDate < '1997-02-24 00:00:00.000'
SELECT * FROM Orders

--4. Who are all the customers whose country is same as the country from which the Order is shipped.
SELECT DISTINCT CUSTOMERS.ContactName FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID WHERE Customers.Country = Orders.ShipCountry
SELECT * FROM Orders

--5. Is there any Sales related customers who have placed orders, if so, what are their Company name ?
SELECT CompanyName FROM Customers INNER JOIN ORDERS ON Customers.CustomerID = Orders.CustomerID WHERE ContactTitle LIKE '%Sales%'
SELECT * FROM Orders