USE w3schools;
SELECT Customers.CustomerName, City -- 컬럼명 나열
FROM Customers;
SELECT Customers.Country
FROM Customers;

-- DISTINCT 중복 제거
SELECT DISTINCT Customers.Country
FROM Customers;

SELECT DISTINCT Customers.City, Customers.Country
FROM Customers;

-- COUNT : record 수 구하는 내장 함수
SELECT COUNT(DISTINCT City)
FROM Customers;
SELECT COUNT(DISTINCT Country)
FROM Customers