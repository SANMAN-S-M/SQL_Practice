

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) UNIQUE NOT NULL,
    location VARCHAR(50) DEFAULT 'Head Office'
);

INSERT INTO departments VALUES
(1, 'HR', 'Mumbai'),
(2, 'IT', 'Bangalore'),
(3, 'Finance', DEFAULT),
(4, 'Marketing', 'Delhi');
drop table if exists employees;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    salary DECIMAL(10,2) CHECK (salary > 10000),
    dept_id INT,
    join_date DATE,

    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);


INSERT INTO employees VALUES
(101, 'Amit Sharma', 'amit@gmail.com', 50000, 2, '2023-01-10'),
(102, 'Priya Nair', 'priya@gmail.com', 60000, 1, '2023-03-15'),
(103, 'Rahul Das', 'rahul@gmail.com', 45000, 2, DEFAULT),
(104, 'Sneha Iyer', 'sneha@gmail.com', 70000, 3, '2022-12-01'),
(105, 'Arjun Kumar', NULL, 30000, 4, DEFAULT);

