select * from sales_data;

-- Add a new column email (VARCHAR) to the table.

alter table sales_data add email varchar(30);

-- Modify the salary column to allow values up to 10 digits.

alter table sales_data modify salary bigint;

-- Rename the column emp_name to employee_name.

alter table sales_data rename column emp_name to employee_name;

-- Delete the column experience from the table.

alter table sales_data drop column experience ;

-- Add a constraint to make emp_id as PRIMARY KEY.

alter table sales_data modify emp_id int primary key;

-- Add a NOT NULL constraint to department.

alter table sales_data modify department varchar(50) not null;

-- Add a DEFAULT value of 'Unknown' to the city column.

alter table sales_data modify city varchar(30)  default 'unknown';

-- Rename the table sales_data to employee_sales.

alter table sales_data rename  to employee_sales;


-- Drop the table employee_sales.

drop table employee_sales;

