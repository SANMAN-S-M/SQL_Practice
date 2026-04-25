delimiter //

create function add_num(a int,b int)
returns int
deterministic
begin
return a+b;
end //
delimiter ;

