select * from departments;
select * from employees;
select * from projects;


-- Employees with their department names

select e.emp_id,e.emp_name,d.dept_name
from employees e
inner join departments d
on e.dept_id=d.dept_id;


-- All employees (even without department)

select e.emp_name,d.dept_name
from employees e
left join departments d
on e.dept_id=d.dept_id;

-- All departments (even without employees)

select d.dept_name,e.emp_name
from employees e
right join  departments d
on d.dept_id=e.dept_id;

-- FULL JOIN (if supported)
SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id

UNION

SELECT e.emp_name, d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;

-- Employee with their manager name

SELECT e.emp_name AS employee,
       m.emp_name AS manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;
