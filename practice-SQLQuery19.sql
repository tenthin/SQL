--1. Create table A and table B (should be different table). Table A should have 
--a primary key which will be a foreign key to table B. Insert records in both.
CREATE TABLE A (SNo INT,NAME VARCHAR(10),AGE INT)
INSERT INTO A VALUES(1,'TENZIN',17)
INSERT INTO A VALUES(2,'THINLEY',16)
INSERT INTO A VALUES(3,'TSEWANG',17)
INSERT INTO A VALUES(4,'DORJEE',15)
INSERT INTO A VALUES(5,'GYURMEY',20)
SELECT * FROM A

CREATE TABLE B (SNo INT,CLASS INT,STREAM CHAR(5))
INSERT INTO B VALUES(1,10,'SCI')
INSERT INTO B VALUES(2,11,'ARTS')
INSERT INTO B VALUES(3,12,'COM')
INSERT INTO B VALUES(4,10,'SCI')
INSERT INTO B VALUES(5,11,'ARTS')
SELECT * FROM B

--2. Do INNER JOIN, LEFT JOIN, RIGHT JOIN and FULL OUTER JOIN to table A and B.
SELECT * FROM A INNER JOIN B ON A.SNo = B.SNo
SELECT * FROM A LEFT JOIN B ON A.SNo = B.SNo
SELECT * FROM A RIGHT JOIN B ON A.SNo = B.SNo
SELECT * FROM A FULL OUTER JOIN B ON A.SNo = B.SNo

--3. What are the productIDs ordered by Customer with ID 'TOMSP'
SELECT * FROM [Order Details] INNER JOIN Orders ON [Order Details].OrderID = Orders.OrderID WHERE Orders.CustomerID = 'TOMSP'
SELECT * FROM Orders

--4. What are the productIDs shipped via 2
SELECT * FROM [Order Details] INNER JOIN Orders ON [Order Details].OrderID = Orders.OrderID WHERE Orders.ShipVia = 2

--5. Which customerIDs have got some discount in their orders.
SELECT * FROM [Order Details] INNER JOIN Orders ON [Order Details].OrderID = Orders.OrderID WHERE [Order Details].Discount != 0 
