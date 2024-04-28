#18type.sql

USE w3schools;

# 문자열
# VARCHAR (길이)
CREATE TABLE my_table3
(
    name  VARCHAR(3),
    title VARCHAR(5),
    notes VARCHAR(1000)
);
DESC my_table3;
INSERT INTO my_table3
    (name, title, notes)
VALUES ('이강인', '축구선수', '파리생제르망');
INSERT INTO my_table3
    (name, title, notes)
VALUES ('네이마르', '야구선수', '사우디아라비아');

CREATE TABLE my_table4
(
    title   VARCHAR(20),
    content VARCHAR(100),
    author  VARCHAR(20)
);
INSERT INTO my_table4
    (title, content, author)
VALUES ('개미', '개미 관련 이야기', '베르나르베르베르');

SELECT *
FROM my_table4;

# 수
# 정수 INT
# 실수 DECIMAL(DEC), (총길이, 소수점이하길이)
CREATE TABLE my_table5
(
    age    INT,
    height DEC(5, 2)
);
DESC my_table5;
SELECT *
FROM my_table5;

INSERT INTO my_table5 (age, height)
VALUES (10, 170.25);

INSERT INTO my_table5 (age, height)
VALUES (10, 1000.25);

INSERT INTO my_table5 (age, height)
VALUES (10, 170.333333); # 소수점 짤림

INSERT INTO my_table5 (age, height)
VALUES (10, 170.33999);
# 반올림 (170.34)

CREATE TABLE my_table6
(
    product_num    INT,
    product_weight DEC(7, 3)
);

DESC my_table6;
SELECT *
FROM my_table6;
INSERT INTO my_table6 (product_num, product_weight)
VALUES (1, 30.1234567890);

# 날짜시간
# DATE : 날짜 (YYYY-MM-DD)
# DATETIME : 날짜시간 (YYYY-MM-DD HH:MM:SS)
CREATE TABLE my_table7
(
    col1 DATE,
    col2 DATETIME
);

DESC my_table7;
SELECT *
FROM my_table7;

INSERT INTO my_table7
    (col1, col2)
VALUES ('2002-08-10', '1999-09-09 22:10:10');

CREATE TABLE my_table8
(
    date     DATE,
    datetime DATETIME
);
SELECT *
FROM my_table8;

INSERT INTO my_table8
    (date, datetime)
VALUES (NOW(), NOW());

CREATE TABLE my_table9
(
    string_col    VARCHAR(30),
    int_col       INT,
    dec_col       DEC(10, 2),
    date_col      DATE,
    date_time_col DATETIME
);
DESC my_table9;
SELECT *
FROM my_table9;
INSERT INTO my_table9 (string_col, int_col, dec_col, date_col, date_time_col)
VALUES ('곧 점심시간이다!', 50000, 54321.79, '2024-04-24', '1999-09-19 23:12:59');

CREATE TABLE my_table10
(
    title     VARCHAR(30),
    name      VARCHAR(30),
    age       INT,
    price     DEC(10, 3),
    published DATE,
    inserted  DATETIME
);
INSERT INTO my_table10
    (title, name, age, price, published, inserted)
VALUES ('이것이 자바다', '신용권', 40, 23434.223, '1999-09-09', '1999-10-10 12:33:12'),
       ('스프링부트', '홍길동', 50, 2342.123, '2024-01-01', '2024-04-24 12:31:11');
SELECT *
FROM my_table10;

DESC my_table10;


