# 33leftJoin.sql

USE mydb2;

# LEFT (OUTER) JOIN
# INNER JOIN + 왼쪽 테이블에만 있는 레코드

# 1,2,3,4
SELECT *
FROM mydb2.table1;

# 2,2,3,4,5
SELECT *
FROM mydb2.table2;

SELECT *
FROM mydb2.table1
         LEFT JOIN mydb2.table2 ON col_a = col_b;

DELETE
FROM table1;
DELETE
FROM table2;

INSERT INTO table1
VALUES (1),
       (2),
       (2),
       (3),
       (4);
INSERT INTO table2
VALUES (3),
       (4),
       (5),
       (5);

SELECT *
FROM table2
         JOIN table1 ON col_a = col_b;

SELECT *
FROM table2
         LEFT JOIN table1 ON col_a = col_b;

DELETE
FROM table4;

INSERT INTO table3
VALUES (4),
       (5),
       (6),
       (3);

INSERT INTO table4
VALUES (5),
       (6),
       (7),
       (7),
       (8);
# 1. 카테시안 곱 : 20개
SELECT *
FROM table3
         JOIN table4;
# 2. INNER JOIN : 2개
SELECT *
FROM table3
         JOIN table4 ON col_a = col_b;
# 3. LEFT JOIN : 4개, null 2개
SELECT *
FROM table3
         LEFT JOIN table4 on col_a = col_b;

# RIGHT OUTER JOIN
SELECT *
FROM table4
         RIGHT JOIN table3 on col_a = col_b;

SELECT *
FROM table1
         LEFT JOIN table2 on col_a = col_b;
SELECT *
FROM table1
         RIGHT JOIN table2 on col_a = col_b;