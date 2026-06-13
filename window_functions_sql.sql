use basic_sql;
select*from index_1;
select distinct coffee_name,sum(money) over (partition by coffee_name) as total_money from index_1; 
#window functions in sql
select distinct coffee_name,sum(money) over (partition by coffee_name) as total_money from index_1; 

SELECT  date, cash_type, money,SUM(money) OVER (PARTITION BY cash_type) AS card_total FROM index_1;

select row_number() over (order by coffee_name) as date,coffee_name from index_1 order by coffee_name;

SELECT
    ROW_NUMBER() OVER (ORDER BY coffee_name) AS rn,
    coffee_name
FROM (
    SELECT DISTINCT coffee_name
    FROM index_1
);

select coffee_name,row_number() over (order by coffee_name) as un from(select distinct coffee_name from index_1) t;

### ROW NUMBER ###
select row_number() over(order by coffee_name) as cash_type,money from index_1 order by coffee_name;
#### RANK #####
SELECT coffee_name,money, RANK() OVER(ORDER BY coffee_name ASC) AS coffee_name FROM index_1;
SELECT coffee_name,money,ROW_NUMBER() OVER(ORDER BY coffee_name ASC) AS coffee_name FROM index_1;

select*from student;

select st_depart from student group by st_depart having count(*)>5;

select st_depart,sum(st_age) from student group by st_depart;
