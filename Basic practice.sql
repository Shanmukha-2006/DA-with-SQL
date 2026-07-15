create database company;
use company;
create table emp(eid int,ename varchar(20),eage int,esalary int,edept varchar(20));
insert into emp values(101,'rajesh',24,50000,"software developer"),
					  (102,"shanmukha",23,60000,"data analyst"),
                      (103,"vishnu",24,55000,"java developer"),
                      (104,"vardhan",21,45000,"data analyst"),
                      (105,"thiru",25,60000,"java developer"),
                      (106,"nikhil",20,70000,"cyber security");
                      
update emp set address="hyd" where eid=101;
update emp set address="ndl" where eid=102;
update emp set address="kdp" where eid=103;
update emp set address="dmm" where eid=104;
update emp set address="ndl" where eid=105;
update emp set address="dmm" where eid=105;
                      
alter table emp add column address varchar(30);
                      
SET SQL_SAFE_UPDATES = 0;
update emp set esalary=67000 where eid=104;

alter table emp add primary key(eid);
desc emp;
select*from emp;
#order by
select eid,ename,eage from emp order by eage;
select eid,ename,esalary from emp order by esalary desc;
select eid,ename,esalary,edept from emp order by esalary desc,edept;

#group by
select edept,sum(esalary) from emp group by edept;

select edept,count(esalary)from emp group by edept;

select edept,address,count(esalary) from emp group by edept,address;

#having
select edept,sum(esalary) from emp group by edept having sum(esalary)>80000;

#questions with answers
#Display all employee details.
select*from emp;

#Display only employee names and salaries
select ename,esalary from emp;

#Find the total number of employees.
select count(eid) from emp;

#Display unique job roles.
select distinct(edept) from emp;

#Find employees whose salary is greater than 60000.
select eid,ename from emp where esalary>60000;

#Find employees working in department data analyst.
select eid,ename from emp where edept="data analyst";

update emp set address="ndl" where eid=105;

update emp set address="dmm" where eid=106;

#Find employees whose address is 'knl'.
select eid,ename from emp where address='ndl';

#Find employees with salary between 1000 and 3000.
select ename,esalary from emp where esalary between 40000 and 55000;

#Find employees whose name starts with 'r'.
select eid,ename from emp where ename like "r%";

#Find employees whose name ends with 'a'.
select eid,ename from emp where ename like "%a";

#Find maximum salary.
select max(esalary) from emp;

#Find minimum salary.
select min(esalary) from emp;

#Find average salary.
select avg(esalary) from emp;

#find count emp ids
#Count employees in each department.
select count(eid) from emp;

#find sum of salary
#Find total salary paid to employees.
select sum(esalary) from emp;

select*from emp;


#Display department-wise employee count.
select from emp group by edept;
select  edept,count(edept) from emp group by edept;

#Display department-wise average salary.
select  edept,avg(esalary) from emp group by edept;

#Display job-wise maximum salary.
select edept,esalary from emp order by esalary desc;

#Display department-wise total salary.
select edept,sum(esalary) from emp group by edept;

#Find departments having more than 1 employees.
select edept,count(edept) from emp group by edept having count(edept)>1;

#Display all records from the employees table.
select*from emp;

#Display only employee_name and salary.
select ename,esalary from emp;

#Find all unique departments.
select distinct edept from emp;

#Find employees with a salary greater than 60000.
select ename,esalary from emp where esalary>60000;

#Find employees whose salary is between 40000 and 55000.
select ename, esalary from emp where esalary between 40000 and 55000;

#Find employees from the IT or Sales department.
select ename,esalary,edept from emp where edept="data analyst" && "cyber security";

#Find employees whose names start with v.
select ename from emp where ename like "v%";

#Find employees whose names end with n.
select ename from emp where ename like "%a";

#Find employees whose name contains nu.
select ename from emp where ename like "%nu%";

#Find employees whose salary is not NULL.


#Sort employees by salary from highest to lowest.
select*from emp order by esalary desc;

#Display the top 5 highest-paid employees.
select ename,esalary from emp order by esalary desc limit 5;


#Find employees who joined after 2025-01-01.
select 

#Find employees who are not in the HR department.
select ename,esalary,edept from emp where edept not "java developer";

#Display employee names using the alias Employee_Name.
select ename from emp order by ename as Employee_Name;

#Find the total number of employees.
select count(eid) from emp;

#Find the highest salary.
select distinct esalary from emp order by esalary desc limit 1;

#second highest salary
select distinct esalary from emp order by esalary desc limit 1,1;

#third highest salary
select distinct esalary from emp order by esalary desc limit 2,1;

#top 3 highest salaries
select distinct esalary from emp order by esalary desc limit 3;

select*from emp;

#Find the lowest salary.
select min(esalary) from emp;

#Find the average salary.
select avg(esalary) from emp;

#Find the total salary paid to all employees.
select sum(esalary) from emp;

#Count the number of employees in each department.
select distinct edept,count(edept) from emp group by edept;

#Find the average salary in each department.
select edept,avg(esalary) from emp group by edept;

#Find the highest salary in each department.




#Find departments with more than 2 employees.
select edept,count(edept) from emp group by edept having count(edept)>1;

#Find departments where the average salary is greater than 60000.
select edept,esalary from emp where esalary>60000;

#Find the total age
select sum(eage) from emp;

#Find total sales by product.
select sum(esalary) from emp;
select edept,sum(esalary) from emp group by edept;

# total sales by category.
select address,sum(esalary) from emp group by address;

#Find total sales by customer.
select*from emp;
select edept,sum(eage) from emp group by edept;

#Find the average order value.
select edept,avg(esalary) as avg_salary from emp group by edept;

