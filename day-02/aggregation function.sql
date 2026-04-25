-- Aggregate Functions


-- Total revenue (price × quantity)
 
 select sum(price* quantity)as total_revenue from orders_data;
 
-- Average price of products

select avg(products) from orders_data;


-- Count total orders

select count(*) as total_orders from orders_data;


-- Find max and min price

select max(price) as max_price,
min(price) as min_price from orders_data;


-- Category-wise total sales

select category ,sum(price) as total_sales
from orders_data
group by category;

