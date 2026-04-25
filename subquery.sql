-- 1. Employees earning more than average salary

select emp_name,salary 
from employees
where salary>(select avg(salary) from employees);

-- 2. Employees in the same department as 'Amit'

select emp_name
from employees
where dept_id=(select dept_id from employees where emp_name='amit');


-- 3. Employees earning more than IT department average

select emp_name,salary
from employees 
where salary>(
select avg(salary) from employees where dept_id=(select dept_id from departments where dept_name='it'));


-- 4. Find highest paid employee

select emp_name,salary
from employees 
where salary=(select max(salary) from employees);


-- 5. Employees who are managers

select emp_name
from employees
where emp_id in(select distinct manager_id from employees
where manager_id is not null);
  

-- 6. Employees who don’t have a manager

select emp_name
from employees
where manager_id is null;


-- 7. Department with highest average salary
SELECT dept_id
FROM employees
GROUP BY dept_id
HAVING AVG(salary) = (
    SELECT MAX(avg_salary)
    FROM (
        SELECT AVG(salary) AS avg_salary
        FROM employees
        GROUP BY dept_id
    ) AS temp
);

-- 8. Employees earning more than their manager


SELECT e.emp_name, e.salary
FROM employees e
WHERE e.salary > (
    SELECT m.salary
    FROM employees m
    WHERE m.emp_id = e.manager_id
);