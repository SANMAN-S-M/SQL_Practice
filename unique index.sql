-- unique index

create index idx_email on employees(email);

select * from employees where email='sneha.reddy@gmail.com';