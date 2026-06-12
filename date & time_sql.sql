use basic_sql;
select*from index_1; 
select coffee_name,cash_type, DATEDIFF(sysdate(),datetime) as datedifference from index_1;
select date_format('2020-06-15','%y');
select date_format('2020-06-15','%m');
select date_format('2020-06-15','%d');
select day(date), date from index_1;
select month(date), date from index_1;
select year(date), date from index_1;

select adddate('2026-06-12',interval(15)day);

select adddate('2026-06-12',interval(5)year);

select adddate('2026-06-12',interval(5)month);

select adddate('2026-06-12',interval(9) quarter);

select adddate('2026-06-12',interval(9) quarter);

select subdate('2026-06-12',interval(5)day);