create database dept;
use dept;
create table dept(deptid int primary key,deptname varchar(30) not null,deptblkno varchar(10));
create table stud(studid int,studname varchar(10) not null,studaddr varchar(30),city varchar(10),deptid int,foreign key(deptid)references dept(deptid));
create table staff(staffid int primary key,staffname varchar(10) not null,deptid int,foreign key(deptid)references dept(deptid));
create table sub(subid int primary key,subname varchar(15) not null,subcode varchar(10),staffid int,foreign key(staffid)references staff(staffid));

insert into dept(deptid,deptname) values(1,"CSE");
insert into dept values(2,"ECE","Block 2");
insert into dept values(3,"IT","Block 3");
insert into dept values(4,"CIVIL","Block 4");
insert into dept values(5,"Mechanical","Block 4");
insert into dept values(6,"Aero","Block 1");

select * from dept;

set foreign_key_checks=0;
drop table staff;
delete from dept where deptname="Mechanical";
update dept set deptname="Aeronautical" where deptname="Aero";
select * from dept;
update dept set deptblkno="NewBlock1" where deptname="CSE";
