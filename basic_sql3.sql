#DQL COMMANDS

use BASIC_SQL;
CREATE TABLE EMP_INFO
(
FIRST_NAME VARCHAR(20),
LAST_NAME VARCHAR(20),
ID INT NOT NULL,
AGE INT,
CITY VARCHAR(20),
STATE VARCHAR(20),
PRIMARY KEY(ID)
);
DESC EMP_INFO
INSERT INTO EMP_INFO VALUES ('SHANMUKHA','DEVALAMKATI',101,21,'BPL','AP'),('VARDHAN','KUMAR',102,20,'DHM','AP'),('SUNIL','KUMAR',103,23,'JG','AP'),('VISHNU','VARDHAN',104,24,'KNL','TG');
SELECT * FROM EMP_INFO;
SELECT COUNT(*) AS RECORD_COUNT FROM EMP_INFO;
SELECT first_name,id from emp_info where age>22;
select * from emp_info where first_name like 'V%';
select * from emp_info where first_name like '%N';
select first_name,id from emp_info where city like '%H%';
select first_name,last_name from emp_info where age>22 or age<24;
select first_name,last_name from emp_info where age>22 and age<24;
select first_name,last_name from emp_info where age in (22,24);




