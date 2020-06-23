#1. Updating the name of the donor sharavn to sharma where donor id=10

	update donor set dname=upper("Sharma") 
    where did=10;

#2. Displaying donors with blood group o+ve

	select dname as "Name",dcno as "Ph.No" from donor d
    join blood b on b.did=d.did
    where bgrp="O+ve";
    
#3 Displaying the name of patient,disease and blood group received 

	select pname,pdisease,bgrp from blood b
    inner join patient p on p.pid=b.pid;
    
#4 Serial numbers of blood remaining at the blood bank

	select sno,bgrp from blood b
    left join patient p on b.pid=p.pid
    where p.pid is null;
    
#5 Count of distinct blood groups

	select distinct bgrp,count(*) as count from blood
    group by bgrp;
    
#6 What is the blood group of sivant and at which bank is the blood of the person stored at

	select bgrp,bname from donor d
    join blood b on b.did=d.did
    join bloodbank bd on b.bid=bd.bid
    where lower(dname)=lower("sivant");
    
#7 What are the scarcely available blood groups

    select bgrp from blood 
    group by bgrp 
    having count(bgrp)<=1;
    
#8 Names of the donors whose name start with "S"

	select dname from donor 
    where dname like "S%";

#9 Display the details of the blood banks

	select * from bloodbank;
    
#10 Display a blood group available in bank 10 , which is not available in bank 11

	select a.bgrp from (select * from blood where bid=10) as a
    left join (select * from blood where bid=11) as b on a.bgrp=b.bgrp
    where b.bgrp is null;