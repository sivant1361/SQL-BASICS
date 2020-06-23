create database movie1;
use movie1;
create table movie(movid int primary key,mcat varchar(10) not null,movlang varchar(10),movlen int,movrat int);
create table ticket(movid int,movshwid int,price int,paymdth varchar(10),pricecat varchar(10),foreign key(movid)references movie(movid),foreign key(movshwid)references movieshow(movshwid));
create table movieshow(movshwid int primary key,mshwdat varchar(10) not null,mid int,foreign key(mid)references movie(movid));
create table staff(sid int primary key,sname varchar(15) not null,scno bigint,notmale varchar(10));

insert into Staff values(1,"Udhay",1151161179,"N");
insert into Staff values(2,"Maliga",9291458791,"Y");
insert into Staff(sid,sname,scno) values(3,"Ramu",8996578425);
insert into Staff(sid,sname,scno) values(5,"Kamal",1692369874);
insert into Staff values(4,"Adi",1801145789,"N");
insert into Staff values(6,"Charu",1542225558,"Y");

select * from staff;

set foreign_key_checks=0;
drop table ticket;
delete from staff where sname="Adi";
update staff set sname="Kamala" where sid=5;
select * from staff;
update staff set scno=1112223339 where sname="Charu";