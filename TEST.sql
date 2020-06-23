#drop database test;
#password:9994532266
create database test;
use test;
drop table worker;
create table worker(wrkid int primary key,firstname varchar(15),lastname varchar(15),sal int,joindat datetime,dept varchar(10));
insert into worker values(1,"NIHARIKA","ARORA",20000,"2013-02-25 09:00:00","HR");
insert into worker values(2,"AYUSHI","GURONDIA",5000,"2015-02-10 09:00:00","ADMIN");
insert into worker values(3,"PRIYANSHA","CHOUKSEY",25000,"2014-05-16 09:00:00","HR");
insert into worker values(4,"APARNA","DESHPANDE",8000,"2016-12-20 09:00:00","ADMIN");
insert into worker values(5,"SHAFALI","JAIN",21000,"2015-08-29 09:00:00","ADMIN");
insert into worker values(6,"SUCHITA","JOSHI",20000,"2012-02-17 09:00:00","ACCOUNT");
insert into worker values(7,"SHUBHI","MISHRA",15000,"2018-03-23 09:00:00","ADMIN");
insert into worker values(8,"DEVYANI","PATIDAR",18000,"2014-05-02 09:00:00","ACCOUNT");
SELECT * FROM WORKER;

select firstname as WORKER_NAME FROM WORKER;
select * from worker where sal>=5000 and sal<=10000;
select * from worker where dept in ("ADMIN","HR");
select count(*) from worker where dept="ACCOUNT";
select max(sal) maximun , min(sal) minimum from worker;
select max(sal) maximun , min(sal) minimum from worker where dept="ADMIN";
select sum(sal) sum from worker where dept in ("HR","ADMIN");
select wrkid,firstname from worker where sal  in (select min(sal) from worker where sal not in(select min(sal) from worker));
select * from worker where wrkid%2!=0;
insert into worker values(9,"NANDHA","KISHORE",8000,"2015-12-13 09:00:00","ADMIN");