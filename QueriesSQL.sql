--Select all fields from the tb customers
SELECT * FROM Customers;
--Select only the field city from the tb customers
SELECT City FROM Customers;
--Select all the different values from the Country column in the Customers table.
SELECT DISTINCT Country FROM Customers;
--Select all customers
SELECT * FROM Customers
WHERE City= 'Berlin';
/*
Select Where not the city is Berlin
*/
SELECT * FROM Customers
WHERE NOT City= 'Berlin';
--select
SELECT * FROM Customers
WHERE CustomerID = 32;
--select
SELECT * FROM Customers
WHERE City = 'Berlin'
AND PostalCode = 12209;
--select
SELECT * FROM Customers
WHERE City = 'Berlin'
OR City= 'London';
/*Select all records from the Customers table,
sort the result alphabetically by the column City.*/
SELECT * FROM Customers
ORDER BY City;
/*Select all records from the Customers table,
sort the result reversed alphabetically by the column City*/
SELECT * FROM Customers
ORDER BY City DESC;
/*Select all records from the Customers table,
sort the result alphabetically,
first by the column Country, then, by the column City*/
SELECT * FROM Customers
ORDER BY Country,City;
--Insert a new record in the Customers table.
INSERT INTO Customers (
  CustomerName,
  Address,
  City,
  PostalCode,
  Country
  )VALUES (
  'Hekkan Burger',
  'Gateveien 15',
  'Sandnes',
  '4306',
  'Norway');
--Select all records from the Customers where the PostalCode column is empty.
SELECT * FROM Customers
WHERE PostalCode IS NULL;
--Select all records from the Customers where the PostalCode column is NOT empty.
SELECT * FROM Customers
WHERE PostalCode IS NOT NULL;
--Update the City column of all records in the Customers table.
UPDATE Customers
SET City = 'Oslo';
--Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
UPDATE
 Customers
SET
 City = 'Oslo'
WHERE
 Country = 'Norway';
 --Update the City value and the Country value.
UPDATE Customers
SET City = 'Oslo',
Country = 'Norway'
WHERE CustomerID = 32;
-- Delete all the records from the Customers table where the Country value is 'Norway'.
DELETE FROM Customers
WHERE Country = 'Norway';
-- Delete all the records from the Customers table.
DELETE FROM Customers;
--Use the MIN function to select the record with the smallest value of the Price column.
SELECT MIN(Price)
FROM Products;
--Use an SQL function to select the record with the highest value of the Price column.
SELECT MAX(Price)
FROM Products;
--Use the correct function to return the numbers of records that have the Price value set to 18.
SELECT COUNT (*)
FROM Products
WHERE Price = 18;
--Use an SQL function to calculate the average price of all products.
SELECT AVG(PRICE)FROM Products;
--Use an SQL function to calculate the sum of all the Price column values in the Products table.
SELECT SUM(Price) FROM Products;
