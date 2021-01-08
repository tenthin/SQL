--1. Get all the order details which are from city 'Lyon' and freight greater than 40.0 and
--shipVia 1 or all the orders from city 'Reims' and freight less than 40.0 but not shipVia 2.
select * from Orders where (ShipCity = 'lyon' and freight > 40 and ShipVia = 1) or (ShipCity = 'reims' and freight < 40 and ShipVia != 2)

--2. From Order Details table, which productID has some discount, with UnitPrice more than 40.0 and 
--Quantity more than 30
select distinct ProductID from [Order Details] where Discount != 0 and UnitPrice > 40 and Quantity > 30

--3. Display all employee details ordered by ascending FirstName and LastName.
select * from Employees order by FirstName,lastname

--4. In Employees table, based on TitleOfCourtesy, if an employee has Mr. as titleOfCourtesy, 
--then a new column should decribe him as 'gentleman', Like wise 'Doctor' is its Dr., 'Misses' for Mrs. and 'Miss' for Ms.
select TitleOfCourtesy,
case 
when TitleOfCourtesy = 'Mr.' then 'gentlemen'
when TitleOfCourtesy = 'Dr.' then 'doctor'
when TitleOfCourtesy = 'Mrs.' then 'misses'
when TitleOfCourtesy = 'Ms.' then 'miss'
end as descriptions
from Employees

--5. Is there any 2 or more customers who are from the same city and that all of them also has the same Job i.e.
-- ContactTitle. If there is, Display the names of those customers. If not, Do nothing.

select count(distinct ContactName),city as counts from Customers group by City having count(distinct ContactName) >= 2 and ContactTitle in (select ContactTitle  from Customers group by ContactTitle)
select count(distinct ContactName) as counts,ContactTitle  from Customers group by ContactTitle,city having city IN 
(select Customers.city as counts from Customers group by City having count(distinct ContactName) >= 2 )


select count(contactname) as counts,city from Customers group by city having count(contactname)> 1 intersect
select count(contactname) as counts,ContactTitle from Customers group by ContactTitle having count(contactname) >1

select * from Customers

