# 40selfJoin.sql

# 하나의 테이블을 여러번 조회

USE mydb2;

CREATE TABLE employee
(
    id         INT PRIMARY KEY,
    name       VARCHAR(10) NOT NULL,
    info       VARCHAR(10) NOT NULL,
    manager_id INT
);

INSERT INTO employee
values (1, '손흥민', '과장', 6),
       (2, '이강인', '대리', 1),
       (3, '이정후', '사원', 1),
       (4, '황희찬', '대리', 1),
       (5, '차범근', '사장', null),
       (6, '박지성', '차장', 5);

# 손흥민의 직속 상사는?
SELECT m.name
FROM employee e1
         JOIN employee m ON e1.manager_id = m.id
WHERE e1.name = '손흥민';

SELECT m.name
FROM employee e1
         JOIN employee m ON e1.manager_id = m.id
WHERE e1.name = '이정후';

SELECT m.name
FROM employee e1
         JOIN employee m ON e1.id = m.manager_id
WHERE e1.name = '손흥민';

SELECT name
FROM employee e
WHERE e.manager_id = (SELECT id FROM employee WHERE name = '손흥민');

SELECT name
FROM employee
WHERE id = (SELECT employee.manager_id
            FROM employee
            WHERE name = '이정후');