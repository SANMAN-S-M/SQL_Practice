-- 1. Create a new table with all data

create table emp_copy as 
select * from employee_data;

select * from emp_copy;

-- 2. Create table with only IT employees

create table dept_it as 
select * from employee_data where department='it';

select * from dept_it;


-- 3. Create table with selected columns

create table emp_basic as
select emp_id,emp_name,department from employee_data ;

select * from emp_basic;

-- 4. Create table with condition (high salary)

create table highest_sal as
select * from employee_data where salary>60000;

select * from highest_sal;


-- 5. Create table with calculated column

CREATE TABLE emp_with_bonus AS
SELECT emp_id,
       emp_name,
       salary,
       salary * 0.1 AS bonus,
       salary + (salary * 0.1) AS total_salary
FROM employee_data;

select * from emp_with_bonus;
-- 6. Create empty table (structure only)

create table emptyy as 
select * from employee_data where department='suii';

select * from  emptyy;

-- 7. Create grouped summary table

create table dept_summary as 
select department,count(*) as total_employees,avg(salary) as avg_salary
from employee_data
group by department;

select * from dept_summary;


-- Create a table with employees from Mumbai only

create table emp_city as
select * from employee_data where city='mumbai';

select * from emp_city;

-- Create a table with salary > average salary

create table above_avg_salary as
select * from employee_data where salary>(select avg(salary) from employee_data);

select * from above_avg_salary;


-- Create a table with only distinct departments
create table dist_dep as
select distinct department from employee_data;

select * from dist_dep;

-- Create a table adding a column salary_after_increment (salary + 5000)
create table salary_After_incrementas 
select emp_id,emp_name,department,joining_date,salary,salary+5000 as salary_after_increment
from employee_data;

select * from salary_After_incrementas ;