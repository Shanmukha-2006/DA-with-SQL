use Basic_sql;
select * from index_1;
select * from index_1 where cash_type='cash';
create view cash as select*from index_1 where cash_type='cash';
select * from cash;


select* from student;
select *from student where st_depart='DS';
create view DS as select *from student where st_depart='DS';
select*from DS;
desc DS;
insert into DS values (15,'Virat',40,'F','CSE');

update DS set st_age=10 where st_id=17;
delete from student where st_id=15;
desc student;
alter table student add cgpa int;
desc ds;
alter table student drop column cgpa;
