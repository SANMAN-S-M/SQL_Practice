-- Insert a new employee record into the table.

insert into employee values(1,'sanman','cs','kasaragod',10000,12000,3);

-- Insert multiple records in a single query.

insert into employee values(1,'messi','aa','kasaragod',100000,12000,5),
(1,'ronaldo','bb','kasaragod',10056,12056,6);

-- Update the salary of all employees in the Sales department by 10%.

update sales_data set salary=salary * 0.1 where department='Sales';

-- Update the city to 'Bangalore' where emp_id = 105.

update sales_data set city='banglore' where emp_id=105;


-- Delete a record where emp_name = 'Ravi'.

delete from sales_data where emp_name='Ravi';

-- Delete all employees who belong to HR department

delete from sales_data where department='HR';


-- Select all employees whose salary is greater than 40,000.

select * from sales_data where salary>40000;

-- Select employees from 'Kochi' and sort them by salary descending.

select * from sales_data where city='kochi' 
order by salary desc;

-- Display department-wise total sales using GROUP BY.

select department,sum(sales_amount) from sales_data 
group by department;

-- Find departments having more than 3 employees using HAVING.

select department,count(*) as total_employee
from sales_data
group by department
having total_employee>3;