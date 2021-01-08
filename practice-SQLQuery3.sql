AVG() - Returns the average value
COUNT() - Returns the number of rows
TOP 1() - Returns the first value
ORDER BY COLUMN NAME ASC/DESC - Returns the last value
MAX() - Returns the largest value
MIN() - Returns the smallest value
SUM() - Returns the sum


SELECT SUM(UnitPrice) FROM [Order Details] 
SELECT MAX(UnitPrice) FROM [Order Details]
SELECT MIN(UNITPRICE) FROM [Order Details]
SELECT COUNT(UNITPRICE) FROM [Order Details]
SELECT AVG(UNITPRICE) FROM [Order Details]
SELECT TOP 3 (UNITPRICE) FROM [Order Details]
SELECT TOP 1 (UNITPRICE) FROM [Order Details] ORDER BY OrderID DESC
SELECT * FROM [Order Details] 
