INSERT INTO CustomerDemographics(CustomerTypeID,CustomerDesc)
VALUES (12,'world')
SELECT * FROM CustomerDemographics

UPDATE CustomerDemographics SET CustomerDesc='	worlDs' WHERE CustomerTypeID = 12
DELETE FROM CustomerDemographics WHERE CustomerTypeID = 12

SELECT * FROM Suppliers WHERE Country='japan'

SELECT Description FROM Categories WHERE CategoryName = 'condiments'
SElect * from Customers
SELECT ContactName,phone FROM Customers WHERE city='london' 
--tuple or record or rows
SELECT * FROM Employees WHERE city != 'seattle' and country = 'USA'

SELECT * FROM Employees WHERE HireDate> '1993'

SELECT * FROM [Order Details] WHERE UnitPrice > 10



