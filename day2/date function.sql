-- Date Functions


-- Find number of days taken for delivery

select order_id,order_date,delivery_date,
DATEDIFF(delivery_date,order_date) as delivery_days 
from orders_data;

-- Extract year from order_date

select year(order_date) from orders_data;


-- Extract month from order_date

 select month(order_date) from order_date;

-- Get current date using function

select now();

-- Find orders placed in March

select * from orders_data 
where monthname(order_date)='march';
