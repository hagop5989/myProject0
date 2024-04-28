#13insert.sql

USE w3schools;

# INSERT INTO 테이블명 (컬럼명..)
# VALUES (데이터들..) 하나 이상의 레코드 행 집어넣음

SELECT *
FROM Employees
ORDER BY EmployeeID DESC;

DESC Employees;
INSERT INTO Employees (LastName)
VALUES ('ironman');
# lastName 만 들어있는 값 생성
# null : 값이 없음

INSERT INTO Employees(FirstName)
VALUES ('tony');

INSERT INTO Employees
    (LastName, FirstName, BirthDate, Photo, Notes)
VALUES ('captain', 'steve', '1990-01-1', 'pic1', 'america');

INSERT INTO Employees
    (FirstName, LastName)
VALUES ('natasha', 'widow');

SELECT *
FROM Customers
ORDER BY Customers.CustomerID DESC;

INSERT INTO Customers
    (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('jang', 'daeseong', 'gwanwoondae', 'seoul', '12345', 'Korea');

INSERT INTO Customers
    (CustomerName, ContactName, City, PostalCode, Country)
VALUES ('jang1', 'daeseong1', 'seoul1', '123451', 'Korea1');

SELECT *
FROM Employees
ORDER BY EmployeeID DESC;

INSERT INTO Employees
    (LastName, FirstName, BirthDate, Photo, Notes)
VALUES ('a', 'b', '1999-01-01', 'd', 'e');
