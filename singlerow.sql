-- Single row subquery


-- Find employees earning more than the average salary.

select * from employees
where salary>(select avg(salary)from employees);


-- Find employee(s) with the highest salary.

select * from employees
where salary=(select max(salary)from employees);

-- Find employees working in the same department as 'Amit'.

select * from employees
where dept_id=(select dept_id from employees where emp_name='amit');

-- Find employees earning more than the minimum salary in IT department.

SELECT * FROM employees
WHERE salary > (
    SELECT MIN(salary)
    FROM employees
    WHERE dept_id = (
        SELECT dept_id FROM departments WHERE dept_name = 'IT'
    )
);

-- Find department having the highest average salary.

select dept_id
from employees
group by dept_id
having avg(salary)=(select max(avg_salary)from (select avg(salary)as avg_salary from employees
group by dept_id)t);





