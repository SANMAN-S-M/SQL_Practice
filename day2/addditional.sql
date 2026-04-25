-- Bonus (Advanced)


-- Find total sales per month

select month(order_date) as month,
sum(price*quantity) as total_sales
from orders_data
group by month
order by month;



-- Get latest order date

select max(order_date) as latest_order
from orders_data;


-- Calculate total revenue per city

select city,
sum(price*quantity) as total_sales
from orders_data
group by city;

-- Find top 3 highest value orders

select order_id,customer_name,product,
price*quantity as total_sales
from orders_data
order by total_sales desc
limit 3;
