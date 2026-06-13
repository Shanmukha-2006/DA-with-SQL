create database fun;
use fun;

create table players
(
player_id int,
player_name varchar(25),
country varchar(20),
runs int
);

insert into players values(18,'virat','india',5000),(7,'dhoni','india',4000),(45,'rohit','india',4500),(57,'rabada','south africa',550),(333,'gayle','west india',4400);

select*from players;

select*from players where runs>4000;

delimiter &&
create procedure top_players()
begin
select * from players where runs>4400;
end&&

call top_players();

delimiter &&
create procedure low_players()
begin
select*from players where runs<4000;
end&&

call low_players();
desc players;
delimiter &&
create procedure top_player1(in num int)
begin
select*from players order by runs desc limit num;
end && 
delimiter ;

call top_player1(1);

set sql_safe_updates = 0;

select * from players where runs=5000;
update players set runs=5500 where player_name='virat';
select*from players;

delimiter &&
create procedure update_players(in num int,in player varchar(25))
begin
update players set runs=num where player_name=player;
end && 
delimiter ;

call update_players(5300,'virat');
select*from players;

#total_count of player based on country
delimiter &&
create procedure player_count_country(in var varchar(25),out total_player int)
begin
select count(*) from players where country=var into total_player;
end && 
delimiter ;

call player_count_country('india',@total_count);
select @total_count as player_count_country;