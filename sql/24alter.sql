# 24alter.sql

USE w3schools;

# ALTER TABLE : 테이블 구조 변경

# 컬럼 추가
CREATE TABLE my_table23
(
    name VARCHAR(3),
    age  INT
);
INSERT INTO my_table23 (name, age)
VALUES ('son', 44),
       ('lee', 33);
ALTER TABLE my_table23
    ADD COLUMN address2 VARCHAR(30);

ALTER TABLE my_table23
    ADD COLUMN city VARCHAR(30);

ALTER TABLE my_table23
    ADD COLUMN birth DATE AFTER age;
-- age 뒤에 넣겠다 (컬럼순서가 변하므로 주의)
# 컬럼 삭제 (주의!!!)
ALTER TABLE my_table23
    DROP COLUMN address2;
ALTER TABLE my_table23
    DROP COLUMN city;

# 컬럼 변경
# 이름변경, 자료형/제약사항 변경
# 이름변경 (주의!!)
ALTER TABLE my_table23
    RENAME COLUMN birth to birth2;

ALTER TABLE my_table23 RENAME COLUMN birth2 to birthDate;

ALTER TABLE my_table23
    MODIFY COLUMN price DEC(3, 2);

ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(30);


INSERT INTO my_table23 (name, address)
VALUES ('123456789012345', 111);

ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(10);

ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) UNIQUE;

ALTER TABLE my_table23
    MODIFY COLUMN price DEC NOT NULL;
ALTER TABLE my_table23
    MODIFY COLUMN age INT UNIQUE;
# UNIQUE 제약사항 삭제하기
ALTER TABLE my_table23
    DROP INDEX age;
SHOW INDEX FROM my_table23;
# UNIQUE 제약을 주면 INDEX 가 생김
# UNIQUE 제약을 삭제하려면 INDEX 를 삭제해야함

# NOT NULL 추가
ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) NOT NULL;
ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) NULL;
-- NULL 허용

ALTER TABLE my_table23
    MODIFY COLUMN age INT(12) NOT NULL;

UPDATE my_table23
SET age=0
WHERE age IS NULL;

SELECT my_table23.age
FROM my_table23
WHERE age IS NULL;

DESC my_table23;
SELECT *
FROM my_table23;

#DEFAULT 제약사항 추가/삭제
ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) DEFAULT 'anonymous';

ALTER TABLE my_table23
    ALTER COLUMN name DROP DEFAULT;

ALTER TABLE my_table23
    ALTER COLUMN age DROP DEFAULT;

# PRIMARY KEY 제약사항 추가 / 삭제
ALTER TABLE my_table23
    ADD PRIMARY KEY (name);

ALTER TABLE my_table23
    DROP PRIMARY KEY;

ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) NULL;

ALTER TABLE my_table23
    ADD PRIMARY KEY (age);
ALTER TABLE my_table23
    DROP PRIMARY KEY;

