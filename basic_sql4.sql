create database BASIC_SQL;
use BASIC_SQL;
create table student1
(
st_id int,
st_name varchar(20),
st_age int,
st_gender varchar(1),
st_depart varchar(20)
);
alter table student1 modify st_id int primary key;
desc student1;
insert into student1 values (17,'vardhan',18,'M','DS'),(1,'shanmukha',21,'M','DS'),(8,'sunil',23,'M','DS'),(9,'vishnu',22,'M','DS');
select*from student1;
select distinct st_name from student1;
select st_id,st_name,st_age from student1 where st_age>21;
select st_id,st_name,st_age from student1 where st_age<22 and st_depart='DS';
select st_id,st_name,st_age from student where st_age<22 or st_depart='DS';
create table deptm
(
dep_id int,
st_id int,
dep_name varchar(20),
primary key(dep_id),
foreign key(st_id) references student1(st_id)
);
set sql_safe_updates = 0;
UPDATE STUDENT1 SET ST_DEPART='CSE' WHERE ST_ID=1; 

