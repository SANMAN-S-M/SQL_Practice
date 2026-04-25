delimiter //

create procedure show_all_employees()
begin
select * from employees;
end //

delimiter ;

call show_all_employees();
