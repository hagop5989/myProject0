# 36join.sql

USE w3schools;

SELECT *
FROM Products
         JOIN Categories ON Products.CategoryID = Categories.CategoryID;

SELECT *
FROM Products p
         JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE p.ProductID = 1;

SELECT p.ProductName, s.SupplierName, s.Country
FROM Products p
         JOIN Suppliers s
              ON p.SupplierID = s.SupplierID
WHERE p.ProductID = 10;


SELECT c.CustomerName
FROM Customers c
         JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderID = 10249;

SELECT e.FirstName, e.LastName
FROM Orders o
         JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE OrderID = 10249;

SELECT s.ShipperName 배달자이름
FROM Orders o
         JOIN Shippers s ON o.ShipperID = s.ShipperID
WHERE o.OrderID = 10249;

SELECT c.CustomerName, o.OrderDate
FROM Customers c
         JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE c.CustomerID = 90
ORDER BY o.OrderDate DESC;

SELECT o.OrderDate, e.LastName, e.FirstName
FROM Orders o
         JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE e.EmployeeID = 3
ORDER BY o.OrderDate DESC;