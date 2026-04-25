-- single column index

create index idx_department on employeees(department);

select * from employees where department='it';