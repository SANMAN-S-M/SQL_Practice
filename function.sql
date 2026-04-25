delimiter //

create function square_num(x int)
returns int
deterministic
begin 
return x*x;
end //

delimiter ;

