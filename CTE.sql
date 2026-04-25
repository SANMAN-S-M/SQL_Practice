-- 1. Find employees with salary above average

WITH avg_salary AS (
    SELECT AVG(salary) AS avg_sal 
    FROM employee_data
)
SELECT * 
FROM employee_data 
WHERE salary > (SELECT avg_sal FROM avg_salary);


-- 2. Get total salary per department

with dept_total_salary as(
select department,sum(salary) from employee_data 
group by department)
select * from dept_total_salary;

/* 1. Employees Above Department Average
-- 👉 Find employees whose salary is greater than the average salary of their own department.*/

with above_dept_avg as(
select department, avg(salary) as avg_sal
from employee_data
group by department)

select e.*
from employee_data e
join above_dept_avg a
on e.department=a.department
where e.salary>a.avg_sal;



/*🔥 2. Second Highest Salary in Each Department

-- 👉 Use a CTE to find the 2nd highest salary in every department.*/

with second_highest_sal as(
select *,
dense_rank() over (partition by department order by salary desc) as rnk from employee_data)
select * from second_highest_sal
where rnk=2;


/* 3. Department Salary Ranking

👉 Assign a rank to employees within each department based on salary using a CTE.*/
with salary_rnk as (
select *,
dense_rank() over(partition by department order by salary desc) as rnk from employee_data)
select * from salary_rnk;


/* 4. Employees Earning More Than Their Manager

👉 (You already tried a version)
👉 Return employees whose salary is greater than their manager’s salary.*/

WITH emp_manager AS (
    SELECT 
        e.emp_id,
        e.emp_name AS employee,
        e.salary AS emp_salary,
        m.emp_name AS manager,
        m.salary AS mgr_salary
    FROM employee_data e
    JOIN employee_data m
        ON e.manager_id = m.emp_id
)
SELECT *
FROM emp_manager
WHERE emp_salary > mgr_salary;


/*5. Total Salary vs Company Average
👉 Find departments whose total salary is greater than the company’s average salary.*/
WITH dept_avg AS (
    SELECT department, AVG(salary) AS dept_avg
    FROM employee_data
    GROUP BY department
),
company_avg AS (
    SELECT AVG(salary) AS avg_salary
    FROM employee_data
)
SELECT *
FROM dept_avg d
CROSS JOIN company_avg c
WHERE d.dept_avg > c.avg_salary;


/*. Find Duplicate Salaries
👉 Use a CTE to find employees who share the same salary with others.*/

WITH salary_count AS (
    SELECT *,
           COUNT(*) OVER (PARTITION BY salary) AS cnt
    FROM employee_data
)
SELECT *
FROM salary_count
WHERE cnt > 1;



/*8. Department with Highest Average Salary
👉 Find the department that has the highest average salary.*/

WITH dept_avg AS (
    SELECT department, AVG(salary) AS avg_salary
    FROM employee_data
    GROUP BY department
)
SELECT *
FROM dept_avg
WHERE avg_salary = (
    SELECT MAX(avg_salary) FROM dept_avg
);











