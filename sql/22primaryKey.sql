#22primaryKey.sql

USE w3schools;

# PRIMARY KEY : NOT NULL UNIQUE
CREATE TABLE my_table17
(
    col1 INT,
    col2 INT PRIMARY KEY -- NOT NULL UNIQUE
);

INSERT INTO my_table17 (col1, col2)
VALUES (1, 1);

INSERT INTO my_table17 (col1, col2)
VALUES (2, 2);

INSERT INTO my_table17 (col1, col2)
VALUES (NULL, 3);

INSERT INTO my_table17 (col1, col2)
VALUES (3, NULL);

DESC my_table17;
# PRIMARY KEY 제약사항은 한 테이블에 하나만 줄 수 있음
CREATE TABLE my_table18
(
    col1 INT PRIMARY KEY,
    col2 INT NOT NULL UNIQUE
);
DESC my_table18;
CREATE TABLE my_table19
(
    col1 INT NOT NULL UNIQUE,
    col2 INT NOT NULL UNIQUE
);
DESC my_table19;
DESC my_table20;
CREATE TABLE my_table20
(
    col1 INT PRIMARY KEY,
    col2 INT NOT NULL UNIQUE
);
# 여러 컬럼 조합으로 PRIMARY KEY 제약사항 줄 수 있음
CREATE TABLE my_table21
(
    col1 INT,
    col2 INT,
    col3 INT,
    PRIMARY KEY (col1, col2) -- 2개 묶어서 PRIMARY KEY
);
DESC my_table21;
INSERT INTO my_table21
    (col1, col2, col3)
VALUES (1, 1, 1);
INSERT INTO my_table21
    (col1, col2, col3) -- col1에 이미 1이 있지만 묶어서 중복이 안됨(둘다)
VALUES (1, 2, 1);

CREATE TABLE my_table22
(
    col1 INT,
    col2 INT,
    col3 INT NOT NULL UNIQUE,
    col4 INT,
    PRIMARY KEY (col1, col2)
);
DESC my_table22;
INSERT INTO my_table22
    (col1, col2, col3, col4)
VALUES (1, 1, 1, 1);
INSERT INTO my_table22
    (col1, col2, col3, col4)
VALUES (1, 2, 2, NULL);
SELECT *
FROM my_table22;