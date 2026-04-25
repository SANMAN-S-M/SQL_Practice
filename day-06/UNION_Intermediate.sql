-- Find employees who are in both tables but only from the IT department.

select * from employees_2023
where department='it'
intersect
select * from employees_2024
where department='it';

-- Find employees present in either table but not common in both (symmetric difference).

select * from employees_2023
except 
select * from employees_2024
union
select * from employees_2024
except
select * from employees_2023;



-- Count total unique employees across both tables.

select count(*) as unique_employee
from(select * from employees_2023
union 
select * from employees_2024)t;

-- Find employees who joined in 2024 but were not in 2023.

select * from employees_2024
except
select * from employees_2023;

-- Find employees who left after 2023.

select * from employees_2023
except
select * from employees_2024;

--  Get all employees from both tables and sort them by emp_name.

select * from employees_2023
union select * from employees_2024
order by emp_name asc;

-- Find common employee names only (ignore emp_id differences).

select emp_name from employees_2023
intersect
select emp_name from employees_2024;
