# 14delete.sql

USE w3schools;

SELECT *
FROM Employees
ORDER BY Employees.EmployeeID DESC;

# 지우기 전에 꼭!!! 같은 WHERE 로 SELECT 해보기
SELECT *
FROM Employees
WHERE EmployeeID = 2044;

DELETE
FROM Employees
WHERE EmployeeID = 2044;

SELECT *
FROM Employees
WHERE FirstName = 'nancy';

DELETE
FROM Employees
WHERE FirstName = 'nancy';

# 모든 레코드 지우기 : WHERE 안쓰면 됨 (실제로 이런일은 거의 없음)
# 매우 주의!!!!
SELECT *
FROM Employees;

DELETE
FROM Employees;

SELECT *
FROM Employees;

SELECT *
FROM Employees
WHERE EmployeeId = 1;