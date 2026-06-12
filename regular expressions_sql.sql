use basic_sql;
#Regular Expressions

select*from cust_info;
select * from cust_info where city like 'B%';   #by using like 
select count(*) from cust_info where city like 'B%';

select * from cust_info where city regexp '^B';

select * from cust_info where city regexp 'i$';


select count(*) from cust_info where city regexp '^B';

select count(*) from cust_info where cust_name like 'r%' or cust_name like '%s%' or cust_name like '%l';

select count(*) from cust_info where cust_name regexp '[v-z]';

select count(*) from cust_info where country regexp '[xyz]';