-- Basic Queries (1–10)


-- Display all customers

select * from customers;

-- Display all orders

select * from orders;

-- Show only customer names and cities

select name,city from customers;

-- Show all orders where amount > 10000

select * from orders where amount>10000;

-- Find customers from Mumbai

select * from customers where city='mumbai';

-- Show orders placed after '2024-01-01'

select * from orders where order_date>'2024-01-01';

-- Display unique cities from customers table
select distinct city from customers;


-- Find customers with age > 30

select * from customers where age>30;


-- Show orders with product = 'Laptop'

select * from orders where product='lalptop';

-- Display customer names in ascending order

select * from customers order by name asc;