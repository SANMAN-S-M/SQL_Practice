CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    age INT
);

INSERT INTO customers VALUES
(1, 'Amit Sharma', 'Mumbai', 30),
(2, 'Priya Nair', 'Bangalore', 28),
(3, 'Rahul Verma', 'Delhi', 35),
(4, 'Sneha Iyer', 'Chennai', 26),
(5, 'Arjun Reddy', 'Hyderabad', 40),
(6, 'Kavya Menon', 'Kochi', 27),
(7, 'Vikram Singh', 'Pune', 32),
(8, 'Neha Kapoor', 'Delhi', 29),
(9, 'Rohit Das', 'Kolkata', 31),
(10, 'Anjali Gupta', 'Mumbai', 33),
(11, 'Suresh Kumar', 'Chennai', 45),
(12, 'Meera Joshi', 'Pune', 24),
(13, 'Raj Malhotra', 'Delhi', 38),
(14, 'Pooja Singh', 'Bangalore', 27),
(15, 'Kiran Patel', 'Ahmedabad', 36),
(16, 'Sunita Reddy', 'Hyderabad', 34),
(17, 'Alok Mishra', 'Lucknow', 41),
(18, 'Deepika Rao', 'Bangalore', 25),
(19, 'Manish Jain', 'Jaipur', 37),
(20, 'Nisha Khan', 'Mumbai', 29),
(21, 'Varun Shah', 'Surat', 33),
(22, 'Ritika Sen', 'Kolkata', 26),
(23, 'Tarun Gupta', 'Delhi', 31),
(24, 'Ayesha Ali', 'Hyderabad', 28),
(25, 'Gaurav Mehta', 'Pune', 39);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    amount DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


INSERT INTO orders VALUES
(101, 1, 'Laptop', 55000, '2023-01-10'),
(102, 2, 'Mobile', 20000, '2023-02-15'),
(103, 3, 'Tablet', 15000, '2023-03-12'),
(104, 4, 'Headphones', 3000, '2023-04-05'),
(105, 5, 'Monitor', 12000, '2023-05-20'),
(106, 6, 'Keyboard', 1500, '2023-06-11'),
(107, 7, 'Mouse', 800, '2023-07-19'),
(108, 8, 'Printer', 7000, '2023-08-25'),
(109, 9, 'Camera', 25000, '2023-09-10'),
(110, 10, 'Speaker', 4000, '2023-10-05'),
(111, 1, 'Tablet', 18000, '2023-11-11'),
(112, 2, 'Laptop', 60000, '2023-12-01'),
(113, 3, 'Mobile', 22000, '2024-01-15'),
(114, 4, 'Monitor', 14000, '2024-02-20'),
(115, 5, 'Keyboard', 2000, '2024-03-05'),
(116, 6, 'Mouse', 900, '2024-04-18'),
(117, 7, 'Printer', 8000, '2024-05-22'),
(118, 8, 'Camera', 27000, '2024-06-09'),
(119, 9, 'Speaker', 4500, '2024-07-30'),
(120, 10, 'Laptop', 65000, '2024-08-14'),
(121, 11, 'Tablet', 16000, '2024-09-01'),
(122, 12, 'Mobile', 21000, '2024-10-10'),
(123, 13, 'Monitor', 13000, '2024-11-05'),
(124, 14, 'Keyboard', 1700, '2024-12-12'),
(125, 15, 'Mouse', 850, '2025-01-20');
