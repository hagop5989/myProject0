#20default.sql

USE w3schools;

# DEFAULT : 값을 주지 않을 때의기본값을 정의해줌
# DEFAULT 제약사항이 NOTNULL 을 의미하진 않는다, NULL 을 강제로 넣을수있다
CREATE TABLE my_table13
(
    col1 VARCHAR(10),
    col2 VARCHAR(10) DEFAULT 'abc'
);
DESC my_table13;
INSERT INTO my_table13 (col1, col2)
VALUES ('qwe', 'zxc');


INSERT INTO my_table13 (col2)
VALUES ('iop');

INSERT INTO my_table13(col1)
VALUES ('bnm');

SELECT *
FROM my_table13;

DESC my_table13;

INSERT INTO my_table13
VALUES ('jkl', NULL);

CREATE TABLE my_table14
(
    col1 INT,
    col2 VARCHAR(20) NOT NULL,
    col3 VARCHAR(10)          DEFAULT '손흥민',
    col4 VARCHAR(30) NOT NULL DEFAULT '기본값'
);
DESC my_table14;
SELECT *
FROM my_table14;
INSERT INTO my_table14 (col1, col2, col3, col4)
VALUES (NULL, '낫널', NULL, '낫널디폴트');