# Creating procedure for inserting the details of patient:

delimiter *project*
create procedure inpatient
(
in pid int ,
in pname varchar(15),
in pdisease varchar(15)
)
begin 
insert into patient values(pid,pname,pdisease);
end *project*
delimiter ;

# Creating procedure for inserting the details of blood bank:

delimiter *madeby*
create procedure inbloodbank
(
in bid int ,
in bname varchar(30),
in baddr varchar(30),
in bcno bigint
)
begin 
insert into bloodbank values(bid,bname,baddr,bcno);
end *madeby*
delimiter ;

# Creating procedure for inserting the details of donor:

delimiter *sivant*
create procedure indonor
(
in did int ,
in dname varchar(15),
in dmedrep varchar(15),
in daddr varchar(30),
in dcno bigint
)
begin 
insert into donor values(did,dname,dmedrep,daddr,dcno);
end *sivant*
delimiter ;

# Creating procedure for inserting the details of donor:

delimiter *e0119004*
create procedure inblood
(
in sno int ,
in bgrp varchar(10),
in bqty int,
in pid int,
in bid int,
in did int
)
begin 
insert into blood values(sno,bgrp,bqty,pid,bid,did);
end *e0119004*
delimiter ;

delimiter *sret*
create procedure inbloodspl
(
in sno int ,
in bgrp varchar(10),
in bqty int,
in bid int,
in did int
)
begin 
insert into blood(sno,bgrp,bqty,bid,did) values(sno,bgrp,bqty,bid,did);
end *sret*
delimiter ;

# Inserting Patient Details:

call inpatient(1,"Ramu","Dengue");
call inpatient(2,"Somu","Viral Fever");
call inpatient(3,"Kenu","Aids");
call inpatient(4,"Thanu","Cancer");
call inpatient(5,"David","Dengue");
call inpatient(6,"Kamal","Heart Atack");
call inpatient(7,"Premji","Fracture");
call inpatient(8,"Rohit","Stones");

# Inserting Donor Details:

call indonor(1,"Sivant","Fit","Tnagar",9130620019);
call indonor(2,"Shravan","Fit","Kodambakam",9180619989);
call indonor(3,"Fakir","Fit","J K Nagar",9123456789);
call indonor(4,"Akbar","Fit","Amarapuram",9954967812);
call indonor(5,"Siva","Fit","Oil Mill",9994532266);
call indonor(6,"Starr","Fit","GRT",9952496151);
call indonor(7,"King","Fit","Krishna Sweets",9444437999);
call indonor(8,"Yodo","Fit","Aziz Nagar",7373738590);
call indonor(9,"Krishna","Fit","Oil Mill",9994445553);
call indonor(10,"Sharavn","Fit","Krishna Sweets",9818564523);
call indonor(11,"Fakir","Fit","MGM Colony",9123456789);
call indonor(12,"Sivaji","Fit","KK Nagaram",8031215622);


# Inserting Blood Bank Details:

call inbloodbank(10,"Kilpak Blood Bank","Kilpak",27660225);
call inbloodbank(11,"Thiruvallur Blood Bank","Thiruvallur",27130601);

# Inserting Blood Detials:

call inbloodspl(9,"O+ve",450,11,9);
call inbloodspl(10,"AB+ve",450,10,10);
call inbloodspl(11,"B-ve",450,11,11);
call inbloodspl(12,"O+ve",450,10,12);

call inblood(13,"O+ve",450,1,11,5);
call inblood(14,"B+ve",450,2,10,6);
call inblood(15,"AB+ve",450,3,11,7);
call inblood(16,"O-ve",450,4,10,8);
call inblood(17,"O+ve",450,5,11,1);
call inblood(18,"B+ve",450,6,10,2);
call inblood(19,"B+ve",450,7,11,3);
call inblood(20,"O+ve",450,8,10,4);

# Dropping all the procedures:

drop procedure inblood;
drop procedure inpatient;
drop procedure inbloodbank;
drop procedure indonor;
drop procedure inbloodspl;