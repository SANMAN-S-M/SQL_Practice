-- View Raw Data

select * from employees;

-- check datatype

desc employees;

SET SQL_SAFE_UPDATES = 0;

-- Remove Extra Spaces from Text Columns

update employees set name=trim(name),city=trim(city),age=trim(age),salary=trim(salary),join_date=trim(join_date),department=trim(department)
where employee_id>0;


-- Convert Empty Strings to NULL

update employees 
set age=null
where age='';

update employees 
set name=null
where name='';

update employees 
set city=null
where city='';


update employees 
set salary=null
where salary='';

update employees 
set join_date=null
where join_date='';

update employees 
set department=null
where department='';


UPDATE employees
SET age = '28'
WHERE age = 'twenty eight';

-- Convert NaN to NULL
UPDATE employees
SET age = NULL
WHERE age = 'NaN';
