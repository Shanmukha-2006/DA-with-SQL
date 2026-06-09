create database BASIC_SQL;
use intro_sql;
create table student
(
st_id int,
st_name varchar(20),
st_age int,
st_gender varchar(1),
st_depart varchar(20)
);
alter table student modify st_id int primary key;
desc student;
insert into student values (17,'vardhan',18,'M','DS'),(1,'shanmukha',21,'M','DS'),(8,'sunil',23,'M','DS'),(9,'vishnu',22,'M','DS');
select*from student;
create table dep 
(
dep_id int,
st_id int,
dep_name varchar(20),
primary key(dep_id),
foreign key(st_id) references student(st_id)
);
