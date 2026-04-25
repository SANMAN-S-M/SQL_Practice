-- Intermediate Level

-- Calculate running total of sales for each employee based on date.

select *,
sum(sales_amount) over (partition by emp_id order by sale_date) as running_total
from employee_sales;

-- Find the previous sale amount for each employee using window function.

select *,
lag(sales_amount) over (partition by emp_id order by sale_date) as previous_sale
from employee_sales;


-- Find the next sale amount for each employee.

select *,
lead(sales_amount) over (partition by emp_id order by sale_date)
from employee_sales;


-- Calculate the difference between current and previous sales.

select emp_name,sales_amount,
sales_amount-lag(sales_amount)over (partition by emp_id order by sale_date) as sal_diff
from employee_sales;

-- Find percentage contribution of each sale within its department.

select *,
(sales_amount*100)/sum(sales_amount) over(partition by department) as percent_contribution
from employee_sales;

-- Find top 2 highest sales in each department.

select * from (
select *,
dense_rank() over (partition by department order by sales_amount desc) as rnk
from employee_sales)t
where rnk<=2;


-- Find employees whose sales are greater than department average.

select * from(
select *,
avg(sales_amount) over (partition by department ) as avg_sal
from employee_sales)t
where sales_amount>avg_sal;


