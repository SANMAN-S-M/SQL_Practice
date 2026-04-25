-- Find employees with salary between 45000 and 50000.

select emp_id,emp_name,salary
from employees 
where salary between 45000 and 50000;

-- Find employees whose name ends with 'a'.

select emp_name
from employees
where emp_name like 'a%';

-- Get employees from IT department AND city = 'Mumbai'.

select emp_name,department,city
from employees
where department='it' and city='Mumbai';


-- Get employees from Delhi OR salary > 70000.

select emp_name,department,city,salary
from employees
where city='delhi' or salary>70000;


-- Find employees whose department is in ('HR', 'Marketing').

select * from employees
where department in('hr','marketing');


-- Find employees who joined between 2021 and 2023.

SELECT * 
FROM employees
WHERE YEAR(joining_date) BETWEEN 2021 AND 2023;


-- Get employees whose name contains 'ra'.

select * from employees
where emp_name like '%ra%';

-- Combine: Employees in Finance or IT, salary > 60000, city like '%a%

select * from employees
where department in ('it','finance') and salary>60000 and city like'%a%'
