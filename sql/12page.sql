#12page.sql

USE w3schools;

INSERT INTO Customers
    (customername, contactname, address, city, postalcode, country)
SELECT customername, contactname, address, city, postalcode, country
FROM Customers;

SELECT COUNT(*)
FROM Customers;

# 직원 테이블 데이터 추가

INSERT INTO Employees
    (LastName, FirstName, BirthDate, Photo, Notes)
SELECT LastName, FirstName, BirthDate, Photo, Notes
FROM Employees;

SELECT COUNT(*)
FROM Employees;

DELETE
FROM Employees
WHERE EmployeeID > 580;