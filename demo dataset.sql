drop table if exists employee_data;

CREATE TABLE employee_data (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    joining_date DATE,
    city VARCHAR(50)
);

INSERT INTO employee_data VALUES
(101, 'Amit', 'IT', 60000, '2022-01-10', 'Delhi'),
(102, 'Neha', 'HR', 45000, '2021-03-15', 'Mumbai'),
(103, 'Raj', 'IT', 70000, '2020-07-20', 'Bangalore'),
(104, 'Priya', 'Finance', 65000, '2019-11-25', 'Chennai'),
(105, 'Karan', 'IT', 55000, '2023-02-12', 'Delhi'),
(106, 'Sneha', 'HR', 48000, '2022-06-18', 'Mumbai'),
(107, 'Arjun', 'Finance', 72000, '2021-09-05', 'Bangalore'),
(108, 'Meera', 'IT', 50000, '2020-12-30', 'Chennai');