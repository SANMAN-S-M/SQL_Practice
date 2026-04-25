-- intermideate

-- Find the number of employees in each department (including empty departments).

select d.dept_id,d.dept_name,
count(emp_id)as total_employees
from employees e 
right join departments d 
on e.dept_id=d.dept_id
group by d.dept_id,d.dept_name;

-- Display departments that have more than 1 employee.

select d.dept_id,d.dept_name,
count(emp_id) as total_employees
from employees e
join departments d
on e.dept_id=d.dept_id
group by d.dept_id,d.dept_name
having count(emp_id)>1;

-- Show the highest salary in each department.

select d.dept_id,d.dept_name,max(e.salary) as highest_salary
from employees e
join departments d
on e.dept_id=d.dept_id
group by dept_id,dept_name;

-- Show the lowest salary in each department.

select d.dept_id,d.dept_name,
min(e.salary) as lowest_saalry
from employees e
join departments d
on d.dept_id=e.dept_id
group by dept_id,dept_name;


-- Find average salary per department.

select d.dept_id,d.dept_name,
avg(e.salary) as avg_salary
from employees e
join departments d
on e.dept_id=d.dept_id
group by d.dept_id,d.dept_name;



-- Display employee(s) with the highest salary in each department.

SELECT e.emp_id,e.emp_name,e.dept_id,e.salary
FROM employees e
WHERE e.salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE dept_id = e.dept_id
);


-- List departments where average salary is greater than 50,000.

select d.dept_id,d.dept_name,avg(e.salary) as avg_salary
from employees e
join departments d
on e.dept_id=d.dept_id
group by d.dept_id,d.dept_name
having avg(e.salary)>50000;

-- Find employees who do NOT belong to any department.

select e.emp_name,d.dept_name
from employees e
left join departments d
on e.dept_id=d.dept_id
where dept_name  is  null;


-- Find departments that do NOT have any employees.

select d.dept_name,d.dept_id
from departments d
left  join employees e 
on e.dept_id=d.dept_id
where e.dept_id is null;



-- Display department-wise total salary.

select d.dept_id,d.dept_name,sum(e.salary) as total_salary
from employees e
join departments d
on e.dept_id=d.dept_id
group by d.dept_id,d.dept_name;
