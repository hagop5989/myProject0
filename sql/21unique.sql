#21unique.sql

USE w3schools;

# UNIQUE : 다른 레코드의 컬럼 값이 중복되지 않음
# (NULL 은 값이 없는 것이므로 NULL 인 것은 중복이 있을 수 있음)
CREATE TABLE my_table15
(
    col1 VARCHAR(3),
    col2 VARCHAR(3) UNIQUE
);
DESC my_table15;
SELECT *
FROM my_table15;


INSERT INTO my_table15 (col1, col2)
VALUES ('abc', 'def');

INSERT INTO my_table15 (col1, col2)
VALUES ('qwe', 'qwe');

INSERT INTO my_table15 (col1, col2)
VALUES ('abc', 'abc');

INSERT INTO my_table15 (col1, col2)
VALUES ('abcd', 'def');

INSERT INTO my_table15 (col1)
VALUES ('eed');

CREATE TABLE my_table16
(
    col1 VARCHAR(30),
    col2 VARCHAR(40) UNIQUE,
    col3 VARCHAR(50) NOT NULL UNIQUE
);
DESC my_table16;
SELECT *
FROM my_table16;
INSERT INTO my_table16 (col1, col2, col3)
VALUES ('손', NULL, '흥민');
