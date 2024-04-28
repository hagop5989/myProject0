-- SQL 주석
# SQL 주석

# 명령문 실행 ctrl + enter
SELECT *
FROM w3schools.Employees;

# 명령문 종료는 ; 꼭 사용
SELECT *
FROM w3schools.Customers;

# table 데이터들이 저장되는 공간
# 행(records), 열(field)로 이루어져 있음
# 열을 정의하면 됨
#

# schema(database) 만들기
# 새 테이블 만들기(나중에..)
CREATE DATABASE test1;
CREATE TABLE test1.test
(
    id   int,
    name varchar(20)
);

# 데이터베이스명.테이블명
SELECT *
FROM test1.test;

# 축약
# 현재 사용중인 데이터베이스 선택
USE test1;

SELECT *
FROM test;
# 다른 DB 테이블은 생략 못함
SELECT *
FROM w3schools.Customers;

# 안된다면 우측 상단의 DB 현재 경로와 localhost 연결 여부 체크
SELECT *
FROM Customers;

USE w3schools;
SELECT *
FROM w3schools.Customers;