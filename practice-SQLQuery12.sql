if exists (select * from [Order Details] where Quantity in(20,12,10,1004))
begin 
select 1 as yes
end


SELECT OrderID, Quantity,
CASE
    WHEN Quantity > 30 THEN 'The quantity is greater than 30'
    WHEN Quantity = 30 THEN 'The quantity is 30'
    ELSE 'The quantity is under 30'
END AS QuantityText
FROM [Order Details];


CREATE PROCEDURE SelectAllCustomers
AS
SELECT * FROM Customers
GO;

EXEC SelectAllCustomers

CREATE PROCEDURE get_train_availability datestart datetime,dateend datetime
AS
SELECT * FROM train_data WHERE date_departure between datestart and dateend
GO;