-- procedure with input parameter

delimiter //
create procedure get_employee_by_id(in emp_id int)
begin
select * from 
employees
where id=emp_id;
end //
delimiter ;

CALL get_employee_by_id(101);

select * from employees;
