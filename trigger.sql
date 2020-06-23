use forest;
delimiter *
create trigger mustbeupper
before insert on b for each row
begin
set new.name=upper(new.name);
end;
*
delimiter ;

drop trigger mustbeupper;