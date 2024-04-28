# 10not.sql

USE w3schools;

# NOT : 조건을 만족하지 않으면 TRUE

SELECT *
FROM Employees
WHERE NOT BirthDate >= '1960-01-01';

SELECT *
FROM Customers
WHERE NOT Country IN ('France', 'UK', 'Spain')
ORDER BY Country;

SELECT *
FROM Customers
WHERE Country NOT IN ('France', 'UK', 'Spain')
ORDER BY Country;

SELECT *
FROM Products
WHERE NOT Price BETWEEN 100 AND 200
ORDER BY Price;

# 여러 조건 사용 시 괄호 잘 사용하기
SELECT *
FROM Products
WHERE (NOT CategoryID = 1 # NOT 사용시 범위 명시적으로 지정 해주기
    AND Price > 50)
ORDER BY CategoryID, Price;

SELECT *
FROM Orders
WHERE NOT OrderDate LIKE '1997-__-__';

SELECT *
FROM Suppliers
WHERE NOT Country IN ('UK', 'USA');

SELECT *
FROM Suppliers
WHERE Country <> 'UK'
  AND Country <> 'USA';