-- OUT Parameter

delimiter //

create procedure get_total_employees( out total int)
begin
select count(*) into total from employees;
end //
delimiter ;

CALL get_total_employees(@total);
SELECT @total;
