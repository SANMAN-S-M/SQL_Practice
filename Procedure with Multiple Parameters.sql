-- Procedure with Multiple Parameters
DROP PROCEDURE add_employee;
delimiter //

create procedure add_employee(in emp_name varchar(50),in emp_salary int)
begin

insert into employees(emp_name,salary)
values(emp_name,emp_salary);
end //
delimiter ;

CALL add_employee('John', 50000);