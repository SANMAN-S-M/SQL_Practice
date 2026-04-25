-- BASIC

-- Get all employees from both tables without duplicates using UNION.

select * from employees_2023
union
select * from employees_2024;

-- Get all employees including duplicates using UNION ALL.

select * from employees_2023
union all
select * from employees_2024;


-- Find employees present in both years using INTERSECT.

select * from employees_2023
intersect
select * from employees_2024;

-- Find employees who are only in 2023 using EXCEPT.

select * from employees_2023
except
select * from employees_2024;


-- Find employees who are only in 2024 using EXCEPT.

select * from employees_2024
except
select * from employees_2023;

-- Display only employee names from both tables using UNION.

select emp_name from employees_2023
union 
select emp_name from employees_2024;

-- Get unique departments from both tables.

select department from employees_2023
union
select department from employees_2024;



