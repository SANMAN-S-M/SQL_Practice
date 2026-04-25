-- Multi-Row Subquery

-- Find employees working in departments located in the table.

select * from employees
where dept_id in (select dept_id from departments);

-- Find employees who are managers.

select * from employees
where manager_id in (select manager_id from employees where manager_id is not null);


-- Find employees earning more than ANY employee in HR department.

select * from employees
where salary>any (select salary from employees where dept_id=(select dept_id from departments where dept_name='HR'));

-- Find employees earning more than ALL employees in Sales department.

select * from employees
where salary>all (select salary from employees where dept_id=(select dept_id from departments where dept_name='sales'));

-- Find employees working in departments that have more than one employee.

select *from employees
where dept_id in(select dept_id from employees group by dept_id
having count(*)>1);



