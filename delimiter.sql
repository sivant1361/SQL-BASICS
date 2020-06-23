USE FOREST;

DELIMITER $$
create procedure userinsert(in username varchar(100),in age int)
begin
insert into users values(username,age);
end 
$$
DELIMITER ;

call userinsert("Sivant",18);
call userinsert("Starr",4);
select * from users;

delimiter &$
create procedure inputa(in i int,in j varchar(20))
begin
insert into a values(i,j);
end &$
delimiter ;


call inputa(13,"Starr");
select * from a;

delimiter &$
create procedure upadatea(in i int,in j varchar(15))
begin
update  a set name=j where id=i;
select * from a;
end &$
delimiter ;

delimiter &$
create procedure deletea(in i int)
begin
delete from a where id=i;
select * from a;
end &$
delimiter ;

call deletea(13);

call inputb(9,"Singh");