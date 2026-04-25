drop table if exists employee_sales;

CREATE TABLE employee_sales (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    region VARCHAR(50),
    sale_date DATE,
    sales_amount INT
);
INSERT INTO employee_sales VALUES
(101, 'Rahul', 'Sales', 'North', '2023-01-10', 5000),
(102, 'Priya', 'Sales', 'South', '2023-01-12', 7000),
(103, 'Amit', 'HR', 'North', '2023-01-15', 3000),
(104, 'Sneha', 'HR', 'South', '2023-01-18', 4000),
(105, 'Raj', 'IT', 'East', '2023-01-20', 8000),
(106, 'Neha', 'IT', 'West', '2023-01-22', 9000),
(101, 'Rahul', 'Sales', 'North', '2023-02-10', 6000),
(102, 'Priya', 'Sales', 'South', '2023-02-12', 7500),
(103, 'Amit', 'HR', 'North', '2023-02-15', 3500),
(104, 'Sneha', 'HR', 'South', '2023-02-18', 4500),
(105, 'Raj', 'IT', 'East', '2023-02-20', 8500),
(106, 'Neha', 'IT', 'West', '2023-02-22', 9500);
