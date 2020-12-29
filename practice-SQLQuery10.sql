-- Get the orderID and ship address of the least Frieght value.
-- Fetch the OrderID and productID of orders with the highest Unit price.
SELECT OrderID,ShipAddress, 
MIN(freight) 
FROM Orders 
GROUP BY OrderID,ShipAddress 
HAVING MIN(freight)<0.1

SELECT OrderID,ShipAddress,FREIGHT FROM Orders where FREIGHT = (SELECT min(FREIGHT) FROM Orders)
select ProductID,OrderID,UnitPrice from [Order Details] where UnitPrice =(select max(unitprice) from [Order Details])

-- what is the mean UnitPrice of all the products.
SELECT * FROM Products
SELECT AVG(unitprice) FROM Products
 
 -- How many total quantity of order details are there?
 SELECT SUM(Quantity) FROM [Order Details]
 SELECT * FROM	[Order Details]

-- How many employees are there ?
SELECT COUNT(EmployeeID) FROM Employees

-- Select the frist 3 tuples of customer details ordered by contact name.
SELECT TOP 3(ContactName) FROM Customers ORDER BY ContactName
SELECT*FROM Customers

-- Select all the customer details who are not from Germany
SELECT * FROM Customers WHERE COUNTRY != 'GERMANY'

-- Display all the unique orderID from Order details table.
SELECT * FROM [Order Details]
SELECT distinct OrderID FROM [Order Details]

