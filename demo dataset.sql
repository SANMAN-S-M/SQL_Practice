drop table if exists employees_2023;
drop table if exists employees_2024;

CREATE TABLE employees_2023 (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50)
);

INSERT INTO employees_2023 VALUES
(1, 'Rahul', 'HR'),
(2, 'Anjali', 'IT'),
(3, 'Kiran', 'Finance'),
(4, 'Meena', 'IT'),
(5, 'Arjun', 'Sales');

CREATE TABLE employees_2024 (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50)
);

INSERT INTO employees_2024 VALUES
(3, 'Kiran', 'Finance'),
(4, 'Meena', 'IT'),
(5, 'Arjun', 'Sales'),
(6, 'Sneha', 'HR'),
(7, 'Vikram', 'IT');

