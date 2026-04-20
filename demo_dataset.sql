create database practice;


use practice; 


CREATE TABLE sales_data (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    city VARCHAR(50),
    salary INT,
    sales_amount INT,
    experience INT
);

INSERT INTO sales_data VALUES
(101, 'Arun', 'Sales', 'Kochi', 30000, 50000, 2),
(102, 'Meena', 'HR', 'Chennai', 40000, 20000, 4),
(103, 'Ravi', 'Sales', 'Bangalore', 35000, 60000, 3),
(104, 'Anjali', 'IT', 'Hyderabad', 50000, 30000, 5),
(105, 'Kiran', 'IT', 'Kochi', 45000, 35000, 4),
(106, 'Sneha', 'Sales', 'Chennai', 32000, 40000, 2),
(107, 'Rahul', 'HR', 'Bangalore', 38000, 15000, 3),
(108, 'Priya', 'IT', 'Hyderabad', 52000, 28000, 6),
(109, 'Vikas', 'Sales', 'Kochi', 33000, 45000, 3),
(110, 'Neha', 'HR', 'Chennai', 41000, 22000, 5),
(111, 'Amit', 'Sales', 'Mumbai', 36000, 55000, 3),
(112, 'Divya', 'HR', 'Delhi', 42000, 25000, 5),
(113, 'Suresh', 'IT', 'Pune', 48000, 32000, 4),
(114, 'Lakshmi', 'Sales', 'Kochi', 31000, 47000, 2),
(115, 'Naveen', 'IT', 'Chennai', 53000, 30000, 6),
(116, 'Pooja', 'HR', 'Hyderabad', 39000, 21000, 3),
(117, 'Manoj', 'Sales', 'Bangalore', 34000, 52000, 3),
(118, 'Keerthi', 'IT', 'Kochi', 46000, 36000, 4),
(119, 'Ramesh', 'HR', 'Mumbai', 37000, 18000, 2),
(120, 'Anu', 'Sales', 'Chennai', 32500, 43000, 2);