create database forest;
use forest;

create table a(id int primary key,name varchar(20));
create table b(id int primary key,name varchar(20));

insert into a values(1,"Pirate");
insert into a values(2,"Monkey");
insert into a values(3,"Ninja");
insert into a values(4,"Spaghetti");

insert into b values(1,"Rutabaga");
insert into b values(2,"Pirate");
insert into b values(3,"Darth Vader");
insert into b values(4,"Ninja");
insert into b values(12,"Starr");

select * from a inner join b on a.name=b.name;
select * from a left join b on a.name=b.name;
select * from a right join b on a.name=b.name;
select * from a full join b ;

select * from a left join b on a.name=b.name where b.name is null;
select * from a RIGHT join b on a.name=b.name where a.name is null;

select * from a left join b on a.name=b.name where b.name is null
union
select * from a right join b on a.name=b.name where a.name is null;

DELIMITER $$
create procedure userinsert(in username varchar(100),in age int)
begin
insert into users(username,age) values(username,age);
end ;
$$
DELIMITER ;

create table users(username varchar(100),age int);