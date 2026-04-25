use practice;

CREATE TABLE orders_data (
    order_id INT,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    product VARCHAR(50),
    category VARCHAR(50),
    price INT,
    quantity INT,
    order_date DATE,
    delivery_date DATE
);

INSERT INTO orders_data VALUES
(1, 'Arun', 'Kochi', 'Laptop', 'Electronics', 55000, 1, '2024-01-10', '2024-01-15'),
(2, 'Meena', 'Chennai', 'Mobile', 'Electronics', 20000, 2, '2024-02-05', '2024-02-08'),
(3, 'Ravi', 'Bangalore', 'Shoes', 'Fashion', 3000, 3, '2024-03-12', '2024-03-18'),
(4, 'Anjali', 'Hyderabad', 'Watch', 'Accessories', 5000, 1, '2024-01-20', '2024-01-25'),
(5, 'Kiran', 'Kochi', 'Tablet', 'Electronics', 25000, 1, '2024-04-02', '2024-04-07'),
(6, 'Sneha', 'Chennai', 'Bag', 'Fashion', 1500, 2, '2024-02-18', '2024-02-22'),
(7, 'Rahul', 'Bangalore', 'Headphones', 'Electronics', 4000, 2, '2024-03-25', '2024-03-28'),
(8, 'Priya', 'Hyderabad', 'Dress', 'Fashion', 3500, 1, '2024-01-30', '2024-02-03'),
(9, 'Vikas', 'Kochi', 'Camera', 'Electronics', 45000, 1, '2024-04-10', '2024-04-15'),
(10, 'Neha', 'Chennai', 'Sandals', 'Fashion', 2000, 2, '2024-03-05', '2024-03-09'),
(11, 'Amit', 'Mumbai', 'Laptop', 'Electronics', 60000, 1, '2024-02-12', '2024-02-18'),
(12, 'Divya', 'Delhi', 'Watch', 'Accessories', 7000, 1, '2024-01-08', '2024-01-12'),
(13, 'Suresh', 'Pune', 'Shoes', 'Fashion', 3500, 2, '2024-04-01', '2024-04-05'),
(14, 'Lakshmi', 'Kochi', 'Mobile', 'Electronics', 18000, 1, '2024-02-22', '2024-02-27'),
(15, 'Naveen', 'Chennai', 'Tablet', 'Electronics', 27000, 1, '2024-03-15', '2024-03-20');