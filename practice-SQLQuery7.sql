--LIKE
--IN
--BETWEEN
--GROUP BY
--HAVING


SELECT * FROM Customers where ContactTitle LIKE '%sales%'

SELECT * FROM Products where UnitPrice  >= 10 and UnitPrice <= 20
--or
SELECT * FROM Products where UnitPrice BETWEEN 10 AND 20


SELECT TerritoryDescription FROM Territories WHERE TerritoryID IN (01581,01730,01833,02116,02139)
select * from orders
select avg(freight) from orders where ShipCountry = 'Venezuela'
SELECT avg(freight),ShipCountry FROM Orders group by ShipCountry
SELECT avg(freight),ShipCountry FROM Orders group by ShipCountry having count(employeeid)>15





