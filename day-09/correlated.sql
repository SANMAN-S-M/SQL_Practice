-- correlated subquery

-- Find employees earning more than their manager.

select * from employees e
where salary>(select salary from employees m
where m.emp_id=e.manager_id);

-- Find employees earning more than the average salary of their department.

select * from employees e 
where salary > (select avg(salary) as avg_sal from employees
where dept_id=e.dept_id);

-- Find employees who have the highest salary in their department.

SELECT * FROM employees e
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE dept_id = e.dept_id
);

-- Find employees whose salary is less than their department average.

select *  from  employees e
where salary< (select avg(salary) from employees where dept_id=e.dept_id);

-- Find employees who are the only person in their department.

SELECT * FROM employees e
WHERE 1 = (SELECT COUNT(*)
FROM employees
WHERE dept_id = e.dept_id);
