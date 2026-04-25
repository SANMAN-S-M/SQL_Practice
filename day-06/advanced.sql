-- Find employees whose department is same in both years.

select department,emp_name from employees_2023
intersect
select department,emp_name from employees_2024;


-- Find employees who changed department between 2023 and 2024.
SELECT emp_id, emp_name FROM employees_2023
INTERSECT
SELECT emp_id, emp_name FROM employees_2024

EXCEPT

SELECT emp_id, emp_name FROM (
    SELECT * FROM employees_2023
    INTERSECT
    SELECT * FROM employees_2024
) t;

-- Find duplicate records when combining both tables.

select *,count(*) as cnt
from(
select emp_id,emp_name,department from employees_2023
union all
select * from employees_2024
)t
group by emp_id,emp_name,department
having count(*)>1;



-- Find employees appearing exactly once across both tables.

select emp_id,emp_name,department,count(*) as cnt
from(
select * from employees_2023
union all
select * from employees_2024)t
group by emp_id,emp_name,department
having count(*)=1;


-- Get employees from both tables but exclude all common records


/*Split result into:

Common employees
Only 2023 employees
Only 2024 employees

👉 (Hint: Use INTERSECT + EXCEPT together)*/


SELECT * FROM employees_2023
EXCEPT
SELECT * FROM employees_2024

UNION

SELECT * FROM employees_2024
EXCEPT
SELECT * FROM employees_2023;
