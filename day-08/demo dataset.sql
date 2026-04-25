CREATE TABLE employee_data (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    manager_id INT
);

INSERT INTO employee_data VALUES
(1, 'Amit', 'HR', 40000, NULL),
(2, 'Sara', 'HR', 45000, 1),
(3, 'John', 'IT', 60000, NULL),
(4, 'David', 'IT', 65000, 3),
(5, 'Emma', 'IT', 70000, 3),
(6, 'Raj', 'Sales', 50000, NULL),
(7, 'Neha', 'Sales', 52000, 6),
(8, 'Kiran', 'Sales', 48000, 6),
(9, 'Priya', 'Finance', 55000, NULL),
(10, 'Arun', 'Finance', 58000, 9);


