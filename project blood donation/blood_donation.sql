# Creating database blood donor:

create database blooddonor;
use blooddonor;

# Creating table for storing the details of patient:

create table patient
(
pid int primary key,
pname varchar(15),
pdisease varchar(15)
);

# Creating table for storing the details of blood bank:

create table bloodbank
(
bid int primary key,
bname varchar(30),
baddr varchar(30),
bcno bigint
);

# Creating table for storing the details of donor:

create table donor
(
did int primary key,
dname varchar(15),
dmedrep varchar(15),
daddr varchar(30),
dcno bigint
);

# Creating table for storing the details of blood:

create table blood
(
sno int primary key,
bgrp varchar(10),
bqty int,
pid int,
foreign key(pid)references patient(pid),
bid int,
foreign key(bid)references bloodbank(bid),
did int,
foreign key(did)references donor(did)
);

# Displaying the values stored in the tables:

select * from blood;
select * from bloodbank;
select * from donor;
select * from patient;

# Dropping all the tables

drop table donor,patient,bloodbank,blood;