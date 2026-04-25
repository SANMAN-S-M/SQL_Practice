drop table if exists employees;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT
);

INSERT INTO employees VALUES
(1, 'Alice', 101, 50000),
(2, 'Bob', 102, 60000),
(3, 'Charlie', 103, 55000),
(4, 'David', 101, 52000),
(5, 'Eve', NULL, 45000);

drop table if exists departments;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO departments VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance'),
(104, 'Marketing');