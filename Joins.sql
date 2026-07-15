create database joins;
use joins;

#customer table
#cust id primary key,cust name and cust city

#products table
#prd_id primary key,prd_name,category, price

#orders table
#order_id, cust_id, prod_id, quantity, order date, foreign key(cust_id) , foreign key (prod_id)

create table customer(cust_id int primary key,cust_name varchar(20),cust_city varchar(20));
insert into customer values (1,"rajesh","hyd"),
							(2,"vardhan","dmm"),
                            (3,"vishnu","kdp"),
                            (4,"shanmukha","ndl"),
                            (5,"thiru","ndl"),
                            (6,"ram","knl");
select*from customer;
create table product(prod_id int primary key,prod_name varchar(20),prod_catg varchar(20) ,prod_price int);
insert into product values(101,"laptop","electronics",70000),
                           (102,"mobile","electronics",20000),
                           (103,"headphones","electronics",400),
                           (104,"chair","furniture",5000),
                           (105,"table","furniture",6000),
                           (106,"watch","accessories",4000);
select*from product;
                           
create table orders(order_id int primary key, cust_id int, prod_id int,quantity int, order_date date, foreign key(cust_id) references customer(cust_id),
foreign key(prod_id) references product(prod_id));

insert into orders values
(1001,1,101,3,"2026-06-20"),
(1002,2,102,4,"2026-06-22"),
(1003,1,103,10,"2026-07-02"),
(1004,3,104,8,"2026-07-06"),
(1005,4,101,3,"2026-06-22"),
(1006,2,105,8,"2026-07-09"),
(1007,3,102,8,"2026-07-01"),
(1008,1,102,8,"2026-06-30");


select*from customer;
select*from product;
select *from orders;

select customer.cust_id,customer.cust_name,orders.order_id,orders.order_date from customer join orders on customer.cust_id=orders.cust_id;

select c.cust_id,c.cust_name,o.order_id,o.order_date from customer as c inner join orders as o on c.cust_id=o.cust_id;

select c.cust_id,c.cust_name,o.order_id,o.order_date from customer as c left join orders as o on c.cust_id=o.cust_id;

select c.cust_id,c.cust_name,o.order_id,o.order_date from customer as c right join orders as o on c.cust_id=o.cust_id;



