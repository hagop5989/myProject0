USE w3schools;

# SELECT 에 컬럼명
# FROM 에 테이블명
# WHERE 에 솎아낼 레코드 조건(필터링)

SELECT CustomerName, City, Country
from Customers
WHERE City = 'Berlin';
SELECT CustomerName, City, Country
from Customers
WHERE Country = 'Germany';

# 컬럼명 비교연산자 값 순 (WHERE Country = 'Germany')
# 값에 ''로 감싸기 (but, 수 형식은 생략해도 됨)
SELECT *
FROM Customers
WHERE CustomerID = '1';
SELECT *
FROM Customers
WHERE CustomerID = 1;
# 수는 '' 안쓰는게 권장

# 비교 연산자 :
# 같다=, 작다<, 작거나 같다<=, 크다 >, 크거나 같다 >=
# 같지않다 !=, <>
SELECT *
FROM Customers
WHERE CustomerID = 3;
SELECT *
FROM Customers
WHERE CustomerID < 3;
SELECT *
FROM Customers
WHERE CustomerID > 89;
SELECT *
FROM Customers
WHERE CustomerID <= 3;
SELECT *
FROM Customers
WHERE CustomerID >= 89;
SELECT *
FROM Customers
WHERE CustomerID != 1;
SELECT *
FROM Customers
WHERE CustomerID <> 1;

# 문자열 형식(대소문자 구분 없음)
SELECT *
FROM Customers
WHERE CustomerName >= 'S';
SELECT *
FROM Customers
WHERE CustomerName >= 's';
# S로 시작하는 이름들 ↑
SELECT *
FROM Customers
WHERE Country = 'Germany';
SELECT *
FROM Customers
WHERE Country = 'gErMaNy';

# 날짜 형식
SELECT *
FROM Employees
WHERE BirthDate = '1968-12-08';
SELECT *
FROM Employees
WHERE BirthDate >= '1955-01-01';
# 55년 이후의 사람들

# todo : 미국에 있는 공급자(Suppliers) 조회
SELECT *
FROM Suppliers
WHERE Country = 'USA';
# todo : Last Name이 Fuller인 직원(Employee) 조회
SELECT *
FROM Employees
WHERE LastName = 'Fuller';
# todo : CategoryID가 3번인 상품(Products)조회
SELECT *
FROM Products
WHERE CategoryID = 3;
# todo : 가격 20.00 이상인 상품(Products)조회
SELECT *
FROM Products
WHERE Price >= 20.00;
# todo : 주문일 1997년 이전 (1997년 미포함) 주문(Orders) 조회
SELECT *
FROM Orders
WHERE OrderDate < '1997-01-01';

DESC Employees;

SELECT *
FROM Employees;

SELECT *
FROM Products;

SELECT *
FROM Customers;

DESC Customers;