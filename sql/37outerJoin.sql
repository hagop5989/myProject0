# 37outerJoin.sql
USE mydb2;

SELECT *
FROM product;

SELECT *
FROM category;

SELECT *
FROM category c
         LEFT JOIN product p
                   ON c.id = p.category_id;

SELECT *
FROM category c
         LEFT JOIN product p
                   ON c.id = p.category_id
WHERE p.id IS NULL;

USE w3schools;
# 한 번도 주문한 적 없는 고객의 이름을 조회
SELECT c.CustomerName
FROM Orders o
         RIGHT JOIN Customers c
                    ON o.CustomerID = c.CustomerID
WHERE o.OrderID IS NULL;

SELECT DISTINCT c.CustomerName, o.OrderDate
FROM Orders o
         JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderDate LIKE '1996-__-__';

DELETE
FROM Orders
WHERE OrderDate >= '1997-01-01';

SELECT DISTINCT c.CustomerName, o.OrderDate
FROM Orders o
         RIGHT JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderDate IS NULL;

SELECT DISTINCT c.CustomerName, o.OrderDate
FROM Orders o
         RIGHT JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderID IS NULL;

INSERT INTO Employees
    (LastName, FirstName)
VALUES ('흥민', '손'),
       ('강인', '이');

SELECT e.FirstName, e.LastName
FROM Employees e
         LEFT JOIN Orders o ON e.EmployeeID = o.EmployeeID
WHERE o.OrderID IS NULL;