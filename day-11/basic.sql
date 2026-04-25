-- BASIC

-- Display employee names along with their department names.

select e.emp_name,d.dept_name
from employees e
inner join departments d
on e.dept_id=d.dept_id;

-- Show all employees and their department names (include employees without departments).

select e.emp_name,d.dept_name
from employees e
left join departments d
on e.dept_id=d.dept_id;

-- Show all departments and their employees (include departments without employees).

select  e.emp_name,d.dept_name
from employees e
right join departments d
on e.dept_id=d.dept_id;


-- List employee name and salary with department name.

select e.emp_name,e.salary,d.dept_name
from employees e
left join departments d
on e.dept_id=d.dept_id;

-- Display only employees who belong to a department.

select e.emp_name,d.dept_name
from employees e
left join departments d
on e.dept_id=d.dept_id
where d.dept_name is not null;


-- Show employees working in the IT department.

select e.emp_name,d.dept_name
from employees e
left join departments d
on e.dept_id=d.dept_id
where d.dept_name='it';


-- Find employees whose department name is HR.


-- Display all employees with NULL department values.

select e.emp_name,d.dept_name
from employees e
left join departments d
on e.dept_id=d.dept_id
where d.dept_name is null;

-- Show department names along with employee names sorted by department.

select e.emp_name,d.dept_name
from employees e
left join departments d
on e.dept_id=d.dept_id
order by d.dept_name;


-- Count total employees in each department.

select d.dept_name,count(emp_id) as total_employees 
from employees e
right join departments d
on e.dept_id=d.dept_id
group by d.dept_name;



