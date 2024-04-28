# 16alias.sql
USE w3schools;

SELECT *
FROM Products;

DESC Products;

# AS : 컬럼(또는 테이블)에 별칭을 줌
# 값은 그대로이고 컬럼명만 바꿈
SELECT ProductID   AS id,
       ProductName AS name,
       Price       AS 가격
FROM Products;

# AS 키워드 생략 가능
SELECT ProductID   아이디,
       ProductName 제품명,
       Price       가격
FROM Products;

SELECT *
FROM Employees;

DESC Employees;

DESC Customers;

DESC Products;

SELECT *
FROM Customers;

SELECT *
FROM Employees;

UPDATE Customers
SET CustomerName = 1,
    ContactName  = 1,
    Address      =1,
    City         =1,
    PostalCode   =1,
    Country      =1
WHERE CustomerID = 6
