-- Built-in Functions


-- Convert all customer names to uppercase

select upper(customer_name) from orders_data;


-- Find length of each product name
 
 select length(product) from orders_data;
 

-- Round price to nearest thousand

select round(price) from orders_data;


-- Extract first 3 characters of city

select city,left (city,3) as city_short
from orders_data;

-- Convert category to lowercase

select lower(category)from orders_data;