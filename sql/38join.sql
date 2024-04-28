# 38join.sql
USE mydb2;

CREATE TABLE table7
(
    col1 INT,
    col2 VARCHAR(3)
);

CREATE TABLE table8
(
    col_a INT,
    col_b VARCHAR(3)
);

CREATE TABLE table9
(
    col3  INT,
    col_c INT,
    info  VARCHAR(3)
);

INSERT INTO table7
VALUES (1, 'abc'),
       (2, 'def');

INSERT INTO table8
VALUES (1, 'ghi'),
       (2, 'jkl'),
       (3, 'mno');

INSERT INTO table9
VALUES (1, 2, 'pqr'),
       (1, 3, 'stu'),
       (2, 1, 'vwx'),
       (2, 2, 'yza');

# 7열, 24행
SELECT *
FROM table7 t7
         JOIN table9 t9
              ON t7.col1 = t9.col3
         JOIN table8 t8
              ON t8.col_a = t9.col3;

USE w3schools;
SELECT o.OrderID,
       o.OrderDate,
       o.CustomerID,
       CustomerName,
       e.EmployeeID,
       e.FirstName,
       e.LastName,
       s.ShipperID,
       s.ShipperName
FROM Orders o
         JOIN Customers c
              ON o.CustomerID = c.CustomerID
         JOIN Employees e
              ON o.EmployeeID = e.EmployeeID
         JOIN Shippers s
              ON o.ShipperID = s.ShipperID
WHERE o.OrderDate BETWEEN '1996-07-01' AND '1996-07-31'
ORDER BY o.OrderDate, c.CustomerID, e.EmployeeID, s.ShipperID DESC;


#########################################
SELECT *
FROM Products p
         JOIN OrderDetails od
              ON p.ProductID = od.ProductID
         JOIN Orders o
              ON od.OrderID = o.OrderID
WHERE o.OrderDate = '1996-07-08';
#########################################
SELECT *
FROM OrderDetails od
         JOIN Products p ON od.ProductID = p.ProductID
         JOIN Orders o ON od.OrderID = o.OrderID
WHERE o.OrderDate = '1996-07-08';
#########################################
SELECT p.ProductName, o.OrderDate
FROM Orders o
         JOIN OrderDetails od
              ON o.OrderID = od.OrderID
         JOIN Products p
              ON od.ProductID = p.ProductID
WHERE o.OrderDate = '1996-07-08';

#######################################


SELECT *
FROM Products
WHERE ProductID = 71;

# Flotemysost

SELECT c.CustomerName, c.Address, o.OrderDate, p.ProductID
FROM Customers c
         JOIN Orders o
              ON c.CustomerID = o.CustomerID
         JOIN OrderDetails od
              ON od.OrderID = o.OrderID
         JOIN Products p
              ON p.ProductID = od.ProductID
WHERE p.ProductName = 'Fløtemysost';

