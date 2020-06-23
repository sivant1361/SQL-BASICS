create database COLLEGE;
use COLLEGE;
create table Dept(department_id int primary key,department_name varchar(30),department_block_number int);
create table student(student_id int primary key,student_name varchar(30),adress varchar(40),city varchar(30),department_id int,foreign key(department_id) references Dept(department_id));
create table Staff(staff_id int primary key,staff_name varchar(30),depart_id int,foreign key(depart_id)references Dept(department_id));
create table Subject(subject_id int primary key,subject_name varchar(30),subject_code varchar(10),staff_id int,foreign key(staff_id) references Staff(staff_id));

insert into Dept(department_id,department_name) values(1,"CSE");
insert into Dept values(2,"ECE",2);
insert into Dept values(3,"IT",3);
insert into Dept values(4,"CIVIL",4);
insert into Dept values(5,"Mechanical",5);
insert into Dept values(6,"Aero",6);

Drop table Staff;
select * From Dept;
Update Dept Set department_block_number=1 where department_name="CSE";
update Dept Set department_name="Aeronautical" where department_name="Aero";
delete from Dept where department_name="Mechanical";