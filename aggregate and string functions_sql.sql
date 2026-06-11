use basic_sql;
select*from index_1;
select sum(money)from index_1;
select cash_type,count(*) from index_1 group by cash_type;
select max(money) from index_1;
select min(money) from index_1;
select avg(money) from index_1;
select count(cash_type) from index_1;

select round(sum(money),2) from index_1;
select round(avg(money),2) from index_1;
select round(max(money),2) from index_1;
select round(min(money),2) from index_1;

select*from index_1;

#string functions
#concat
select concat(cash_type,coffee_name) 
from index_1;

#substring
select substr('sql lessons',5,8) as extractstring;
select substr('D shanmukha',3,9) as extractstring;

#upper
select cash_type,upper(cash_type) from index_1;


#lower
select cash_type,lower(cash_type) from index_1;

#removing empty spaces using trim
select trim(concat(cash_type,coffee_name)) from index_1;

#character length
select charater_length ("shanmukha") as ch;
select character_length() as ch;

#mid
select mid('hello',2,1);
select mid(cash_type,1,2) from index_1;