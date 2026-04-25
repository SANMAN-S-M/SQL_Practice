-- Aggregate Functions (21–30)


-- Find total number of customers

select count(*) from customers;

-- Find total number of orders

select count(*) from orders;

-- Find average age of customers

select avg(age) from customers;

-- Find maximum order amount

select max(amount) from orders;

-- Find minimum order amount

select min(amount) as minimum_amount from orders;

-- Find total sales (sum of amount)

select sum(amount) as total from orders;

 -- Find average order amount
 
 select avg(amount) as avg_amount from orders;
 
 -- Count how many customers are from each city
 
 select city, count(*)
from customers 
group by city; 
 
-- Find total sales for each product

select product,sum(amount) as total
from orders 
group by product;


-- Find number of orders per product

select * from orders;

select product,count(*)ct_product from orders
group by product;


