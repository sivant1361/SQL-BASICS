# Creating trigger for patient:

delimiter *project*
create trigger patient_trigger
before insert on patient for each row
begin 
set new.pname=upper(new.pname),new.pdisease=upper(new.pdisease);
end *project*
delimiter ;

# Creating trigger for blood bank:

delimiter *madeby*
create trigger blood_bank_trigger
before insert on bloodbank for each row
begin 
set new.bname=upper(new.bname),new.baddr=upper(new.baddr);end *madeby*
delimiter ;

# Creating trigger for donor:

delimiter *sivant*
create trigger donor_trigger
before insert on donor for each row
begin 
set new.dname=upper(new.dname),new.daddr=upper(new.daddr),new.dmedrep=upper(new.dmedrep);
end *sivant*
delimiter ;

# Creating trigger for donor:

delimiter *e0119004*
create trigger blood_trigger
before insert on blood for each row
begin
set new.bgrp=upper(new.bgrp);
end *e0119004*
delimiter ;

# Dropping all the triggers:

drop trigger donor_trigger;
drop trigger patient_trigger;
drop trigger blood_bank_trigger;
drop trigger blood_trigger;
