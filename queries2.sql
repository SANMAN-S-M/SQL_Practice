-- Filtering & Conditions (11–20)


-- Find customers whose age is between 25 and 35

select * from customers where age between 25 and 35;


-- Show orders where amount is between 5000 and 20000

select * from orders where amount between 5000 and 20000;

-- Find customers from Delhi or Bangalore
select * from customers;
select * from customers where city in ('delhi' ,'Bangalore');

-- Display orders NOT for 'Mobile'

select * from orders where product not in('mobile');


-- Find customers whose name starts with 'A'

select * from customers where name like 'A%';

-- Find customers whose name ends with 'a'

select * from customers where name like '%A';

-- Show orders placed in the year 2024

select * from orders 
where year(order_date)=2024;

-- Display customers not from Mumbai

select * from customers 
where city != 'mumbai';

-- Find orders with amount < 5000

select * from orders 
where amount<5000;


-- Show customers aged 25, 30, or 35

select * from customers where age in (25,30,35);
