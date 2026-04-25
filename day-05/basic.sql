-- window function

--  Basic Level

-- 1.Assign a row number to each employee within each department based on highest sales

select *,
row_number() over (partition by department order by sales_amount) as row_num
from employee_sales; 


-- 2.Find the rank of employees within each department based on sales_amount.

select *,
rank() over (partition by department order by sales_amount ) as rnk
from employee_sales;


-- 3.Find the dense rank of employees within each department.

select *,
dense_rank() over (partition by department order by sales_amount desc) as drnk
from employee_sales;

-- 4.Assign a row number for each region ordered by sale_date.

select * ,
row_number() over(partition by region order by sale_date) as rnk
from employee_sales;


-- Display total sales per department using a window function.

select *,
sum(sales_amount) over (partition by department ) as sales_per_department
from employee_sales;

-- Show the average sales per employee.

select *,
avg(sales_amount) over (partition by department ) as avgamount
from employee_sales;


-- Find the maximum sales in each department without using GROUP BY.

select *,
max(sales_amount) over (partition by department ) 
from employee_sales;
