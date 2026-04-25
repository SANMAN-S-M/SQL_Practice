-- ADVANCED

-- Find the second highest sale per department.

select * from(
select * ,
dense_rank() over (partition by department order by sales_amount desc) as rnk from employee_sales)t
where rnk=2;

-- Identify sales trend (increase/decrease) compared to previous record.

select *,
case
when sales_amount>previes_sale then 'increased'
when sales_amount<previes_sale then 'decresed'
else 'no change'
end as sale_trends
from (select *,
lag(sales_amount) over(partition by emp_id order by sale_date) as previes_sale
from employee_sales)t;

-- Find cumulative sales per department ordered by date.

select *,
sum(sales_amount) over (partition by department order by sale_date) running_salary 
from employee_sales;

-- Calculate moving average of last 2 sales for each employee.

select *,
avg(sales_amount) over (partition by emp_id order by sale_date rows between 1 preceding and current row)
 as moving_avg
 from employee_sales;
 
 


-- Find first sale and last sale of each employee using window functions.

select *,
first_value(sales_amount) over (partition by emp_id order by sale_date) as first_sale,
last_value(sales_amount)over (partition by emp_id order by sale_date rows between unbounded preceding and unbounded  following) last_sale
from employee_sales;


-- Divide employees into 4 equal groups (quartiles) based on sales using NTILE()

select *,
ntile(4) over(order by sales_amount  desc)as quartile
from employee_sales;


