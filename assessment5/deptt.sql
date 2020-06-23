create database department;
use department;
create database COLLEGE;
use COLLEGE;
create table stud(student_id int primary key,gender varchar(10),dob date,firstname varchar(10),middlename varchar(10),lastname varchar(10),otherstddtls varchar(50));
create table course(crid int primary key,crname varchar(20),othercrdetls varchar(30));
create table courseschl(crshlid int primary key,othercrschldetls varchar(30),crid int,foreign key(crid) references course(crid));
create table courseregistration(crshid int,foreign key(crshid) references courseschl(crshlid),stdid int,foreign key(stdid) references stud(student_id),primary key(crshid,stdid));

insert into course values(1,"C","Quarter1");
insert into course values(2,"C++","Quarter2");
insert into course values(3,"JAVA","Quarter3");
insert into course values(4,"PYTHON","Quarter1");
insert into course(crid,crname) values(5,"IOT");
insert into course values(6,"English","Quarter2");

set foreign_key_checks=0;
Drop table stud;
delete from course where crname="C++";
Update course Set crname="Problem Solving in C" where crname="C";
select * From course;
update course Set othercrdetls="Quarter1" where crname="English";
