#09orderBy.sql

USE w3schools;
# ORDER BY : 조회 순서 결정 (기본값 :오름차순-낮은것 부터)
# ORDER BY : 컬럼명
SELECT *
FROM Products
ORDER BY ProductID;

# ASC : 오름차순
# DESC : 내림차순
SELECT *
FROM Products
ORDER BY Price ASC;

SELECT *
FROM Products
ORDER BY Price DESC;

# 여러 컬럼 기준
SELECT *
FROM Products
ORDER BY CategoryID, Price, ProductName; #카테고리순 정렬 후 가격,제품명 순 정렬

SELECT *
FROM Products
ORDER BY CategoryID, Price DESC;

# 컬럼명 대신 컬럼 index
SELECT *
FROM Products
ORDER BY 4; # 4번째 카테고리 순으로 정렬

SELECT *
FROM Products
ORDER BY 4, 6;
# 4 번째 후 6번째 순 정렬

# SELECT 에 명시한 컬럼명의 순서를 따라야 함
SELECT ProductName, Products.CategoryID, Products.Price, Products.Unit
FROM Products
ORDER BY 2, 3;

# SELECT ProductName, Products.CategoryID, Products.Price, Products.Unit
# FROM Products
# ORDER BY 2, 3, 6; --> 6 은 불가, SELECT 에 6번째 것이 없음

SELECT *
FROM Employees
ORDER BY BirthDate;

SELECT *
FROM Customers
ORDER BY 7, City;

SELECT *
FROM Suppliers
ORDER BY City;

SELECT *
FROM Employees
ORDER BY FirstName DESC;
