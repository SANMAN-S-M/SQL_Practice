DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS projects;

-- Departments Table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

-- Employees Table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    dept_id INT,
    manager_id INT,
    salary INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Projects Table
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    dept_id INT,
    budget INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Departments
INSERT INTO departments VALUES
(1, 'HR', 'Mumbai'),
(2, 'IT', 'Bangalore'),
(3, 'Finance', 'Delhi'),
(4, 'Marketing', 'Chennai');

-- Employees
INSERT INTO employees VALUES
(101, 'Amit', 2, NULL, 90000),
(102, 'Neha', 1, 101, 60000),
(103, 'Raj', 2, 101, 75000),
(104, 'Priya', 3, 102, 65000),
(105, 'Karan', 4, 103, 50000),
(106, 'Sneha', NULL, 101, 55000);  -- No department

-- Projects
INSERT INTO projects VALUES
(201, 'AI System', 2, 500000),
(202, 'HR Portal', 1, 150000),
(203, 'Finance Audit', 3, 200000),
(204, 'Ad Campaign', 4, 100000),
(205, 'Cloud Migration', 2, 300000);

