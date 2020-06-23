create database movie;
use movie;
create table movie(movid int primary -,mcat varchar(10) not null,movlang varchar(10),movlen int,movrat int);
create table theatre(theid int primary key,hallcat varchar(10) not null,numberofseats int);
create table movieshow(movshwid int primary key,mshwdat varchar(10) not null,mid int,tid int,foreign key(mid)references movie(movid),foreign key(tid)references theatre(theid));
create table seats(sid int primary key,scat varchar(10) not null,tid int,foreign key(tid)references theatre(theid));

insert into movie values(1,"U","Tamil",115,5);
insert into movie values(2,"U","English",92,4);
insert into movie values(3,"U","English",89,6);
insert into movie(movid,mcat,movlang,movlen) values(4,"U","Hindi",180);
insert into movie(movid,mcat,movlang,movlen) values(5,"U","Tamil",169);
insert into movie values(6,"U","Tamil",154,4);

select * from movie;

set foreign_key_checks=0;
drop table theatre,movieshow;
delete from movie where movlang="Hindi";
update movie set movlen=171 where movid=5;
select * from movie;
update movie set movrat=7 where movid=1;