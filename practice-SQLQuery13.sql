
-- 1. If there is any customers who are from 'Lhasa', then update the postalcode of those customers to '99999',
-- and for those from 'UK', update the postal code to '55555', else just display your name with column name data analyst.

IF EXISTS (SELECT * FROM Customers WHERE City = 'LHASA')
BEGIN
	UPDATE Customers SET PostalCode = 99999 WHERE city = 'Lhasa'
END
ELSE IF EXISTS (SELECT * FROM Customers WHERE Country='UK')
BEGIN
	UPDATE Customers SET PostalCode = 55555 WHERE Country='UK'
END
ELSE
BEGIN
	SELECT 'Tenzin Thinley' AS DataAnalyst
END


-- 2. if there is no orders from 'Lhasa' then display the orders from 'Barcelona'.

IF NOT EXISTS (SELECT * FROM Orders WHERE Shipcity = 'LHASA')
BEGIN
	SELECT * FROM Orders WHERE Shipcity = 'Barcelona'
END

-- 3. From the customers table,we need a new column which tells us the description of the customers as follows:
-- if any customer's title is related to 'sales' then the new column should say 'He is from sales department'
-- if the customer's title is related to 'owner', then the new column should say 'he is the owner of the company'\
-- if the customer's title is related to 'marketing', then the new column should say 'he is in the marketing team'
-- if the customers' title is related to 'accounting', then the new column should say 'he handles all the accounts related things'
-- and the new column header should be 'job description'.
-- with the same things, put a condition that the country should be 'Germany'

SELECT *, 
CASE
	WHEN contacttitle LIKE '%sales%' THEN 'He is from sales department'
	WHEN contacttitle LIKE '%owner%' THEN 'he is the owner of the company'
	WHEN contacttitle LIKE '%marketing%' THEN 'he is in the marketing team'
	WHEN contacttitle LIKE '%accounting%' THEN 'he handles all the accounts related things'
END AS [JOB DESCRIPTION]
from Customers WHERE COUNTRY = 'GERMANY'

-- 4. create a Stored procedure by any proper name which accepts 3 parameters: shipcity, freight, and orderdate.
-- Now, this stored procedure should display all the order records which are from that shipcity passed as the parameter,
-- and which are ordered after the passed orderdate and whose freight value is in between the freight value passed and the freight value
-- passed + 40.
GO
CREATE Procedure getorderdetails
@SHIPCITY nvarchar(30), @FREIGHT money, @ORDERDATE datetime
AS 
SELECT * FROM ORDERS WHERE ShipCity='Madrid' and OrderDate>@ORDERDATE and freight between @FREIGHT and @FREIGHT + 40

drop procedure getorderdetails

-- 5. execute the above created Stored procedure, with shipcity: 'Madrid', freight:45.08, orderdate:'1997-04-15 00:00:00.000'

EXEC getorderdetails 'Madrid', 45.08, '1997-04-15 00:00:00.000'
