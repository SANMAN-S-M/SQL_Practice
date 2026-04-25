CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    department VARCHAR(50),
    salary INT,
    hire_date DATE,
    city VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'Arun', 'Kumar', 'arun.kumar@gmail.com', 'IT', 60000, '2022-01-15', 'Bangalore'),
(2, 'Priya', 'Sharma', 'priya.sharma@gmail.com', 'HR', 45000, '2021-03-10', 'Delhi'),
(3, 'Rahul', 'Verma', 'rahul.verma@gmail.com', 'Finance', 55000, '2020-07-22', 'Mumbai'),
(4, 'Sneha', 'Reddy', 'sneha.reddy@gmail.com', 'IT', 70000, '2019-11-05', 'Hyderabad'),
(5, 'Amit', 'Singh', 'amit.singh@gmail.com', 'Sales', 40000, '2023-06-18', 'Pune'),
(6, 'Neha', 'Patel', 'neha.patel@gmail.com', 'HR', 48000, '2022-09-25', 'Ahmedabad'),
(7, 'Vikram', 'Joshi', 'vikram.joshi@gmail.com', 'Finance', 62000, '2021-12-30', 'Jaipur'),
(8, 'Kavya', 'Nair', 'kavya.nair@gmail.com', 'IT', 75000, '2020-05-14', 'Kochi'),
(9, 'Rohit', 'Das', 'rohit.das@gmail.com', 'Sales', 42000, '2018-08-19', 'Kolkata'),
(10, 'Anjali', 'Mehta', 'anjali.mehta@gmail.com', 'HR', 50000, '2023-02-11', 'Chennai');
