create database ques;
use ques;

# Proper method:

create table stu(rno int primary key,name varchar(20));
create table sub(rno int,subject varchar(20),foreign key(rno) references stu(rno));

drop table sub;
drop table stu;

insert into stu values (101,"Akon"),(102,"Bkon"),(103,"Ckon");
insert into sub values (101,"OS"),(101,"CN"),(103,"Java"),(102,"C"),(102,"C++");

select * from stu;
select * from sub;

# Learning method:

create table stu1(rno int,name varchar(20),subject varchar(20),primary key(rno,subject));
drop table stu1;

insert into stu1 values (101,"Akon","OS,CN"),(103,"Bkon","Java"),(102,"Ckon","C,C++");
select rno from stu1 where subject="C";

update stu1 set subject="OS" where rno=101;
update stu1 set subject="C" where rno=102;
insert into stu1 values (101,"Akon","CN"),(102,"Bkon","C++");
select rno from stu1 where subject="C";