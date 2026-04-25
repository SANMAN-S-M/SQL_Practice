CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance'),
(4, 'Sales');

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT,
    manager_id INT
);


INSERT INTO employees VALUES
(101, 'Amit', 50000, 2, NULL),
(102, 'Neha', 60000, 2, 101),
(103, 'Raj', 45000, 1, NULL),
(104, 'Priya', 70000, 3, NULL),
(105, 'Karan', 55000, 2, 101),
(106, 'Sneha', 40000, 1, 103),
(107, 'Vikram', 80000, 3, 104),
(108, 'Riya', 30000, 4, NULL),
(109, 'Arjun', 35000, 4, 108),
(110, 'Meena', 65000, 2, 101);
