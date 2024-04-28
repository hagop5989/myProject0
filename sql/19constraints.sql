#19constraints.sql
USE w3schools;

# 제약사항 constraints
# 특정 '컬럼'에 제약사항을 줌 (예 : 꼭 값이 있어야 함, 기본 값, 중복불가)

# NOT NULL : 꼭 값이 있어야 함 (타입 옆에 작성)
CREATE TABLE my_table11
(
    col1 VARCHAR(10),
    col2 VARCHAR(10) NOT NULL
);
INSERT INTO my_table11
    (col1, col2)
VALUES ('value1', 'value2');
INSERT INTO my_table11
    (col2)
VALUES ('value0');

DESC my_table11;
SELECT *
FROM my_table11;

SELECT *
FROM my_table11
WHERE col2 = 'value2';

# 특정 컬럼이 NULL 인 테이블 조회
SELECT *
FROM my_table11
WHERE col1 IS NULL;

# 특정 컬럼이 NULL 이 아닌 테이블 조회 (<> , != 는 안됨, NULL 과의 연산은 모두 false)
SELECT *
FROM my_table11
WHERE col1 IS NOT NULL;

CREATE TABLE my_table12
(
    col1 INT          NOT NULL,
    col2 VARCHAR(100) NOT NULL
);

DESC my_table12;
SELECT *
FROM my_table12;
INSERT INTO my_table12
    (col1, col2)
VALUES ('10', 'var');