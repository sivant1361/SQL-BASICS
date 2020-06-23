create database emp_project;
create table emp(empno int primary key,fname varchar(20) not null,lname varchar(20) not null,age int,address varchar(30),sal int,check(sal>10000));
create table project(pid int primary key,pname varchar(20),eno int,loc varchar(30),dur int,foreign key(eno) references emp(empno),check(dur>1)); 

create database cust_order;
create table cust(id int primary key,name varchar(15),addr varchar(30),cno varchar(10));
create table ord(ordno int primary key,orddat date,qty int,price int,cid int,foreign key(cid) references cust(id));

SET FOREIGN_KEY_CHECKS=0;
drop table cust;

create table ord1 as select ordno,orddat,qty,price from ord;
drop table ord,cust;
rename table ord1 to ord;

insert into cust values(13,"sivant","Thiruvallur","9994532266");
insert into cust values(4,"siva","Thiruvallur","9952496151");
insert into cust values(1,"king","GRT","9444437999");
insert into cust values(18,"Shravan","Aziz Nagar","7373738590");
insert into cust values(2,"starr","OIL MILL","6381317822");
select * from cust;
