use BASIC_SQL;
#DDL COMMANDS
create table emp
(
emp_id int,
emp_fisrt_name varchar(20),
emp_last_name varchar(20),
emp_title varchar(20),
emp_age int,
emp_salary int
)
desc emp;
alter table emp add gender varchar(10);
alter table emp drop column gender;
alter table emp add depart varchar(20) after emp_title;
alter table emp drop column depart;
rename table empl to emp;
truncate table emp;
drop table emp;