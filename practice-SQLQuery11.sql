-- Name all the customers who are form the city 'Marseille'
SELECT * FROM Customers WHERE CITY='MARSEILLE'

-- Name all the customers whose jobs are related to Sales.
SELECT * FROM Customers WHERE ContactTitle LIKE '%sales%' 

--fetch the details of all the categories having name as 'Beverages','Condiments','Confections','Dairy Products'
SELECT * FROM Categories WHERE CategoryName IN ('BEVERAGES','CONDIMENTS','DAIRY PRODUCTS','CONFECTIONS')

-- Find the details of all the orders where the frieght value is in between 10 and 30.
SELECT * FROM Orders WHERE Freight BETWEEN 10 AND 30

-- Show the mean value of Frieght in Orders, grouped by ShipCity.
SELECT AVG(FREIGHT),ShipCity FROM Orders GROUP BY ShipCity

-- Show the highest value of frieght in Orders, grouped by ShipCountry... but not from 'Brazil'
SELECT MAX(FREIGHT),ShipCountry FROM Orders GROUP BY ShipCountry HAVING ShipCountry != 'BRAZIL'

-- Display the tuples from table A and B together.
SELECT * FROM A UNION
SELECT * FROM B

-- Only display the common records from table A and B.
SELECT * FROM A INTERSECT
SELECT * FROM B

-- Show only the tuples from table a but not in B.
SELECT * FROM A EXCEPT
SELECT * FROM B