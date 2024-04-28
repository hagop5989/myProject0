#08in.sql

USE w3schools;

# IN 하나라도 같으면..
SELECT *
FROM Customers
WHERE Country = 'Germany'
   OR Country = 'UK';

SELECT *
FROM Customers
WHERE Country IN ('Germany', 'UK');

SELECT *
FROM Customers
WHERE Country IN ('Germany', 'UK', 'Sweden', 'France');

SELECT *
FROM Products
WHERE CategoryID IN (2, 3, 6);

SELECT *
FROM Suppliers
WHERE Country IN ('Brazil', 'Japan', 'Italy');

SELECT *
FROM Products
WHERE CategoryID;

SELECT *
FROM Products
WHERE CategoryID IN (SELECT Categories.CategoryID
                     FROM Categories
                     WHERE CategoryName IN ('Seafood'));