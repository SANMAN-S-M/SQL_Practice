-- HARD

-- Display employees earning more than the average salary of their department.

SELECT emp_id, emp_name, salary, dept_id
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE dept_id = e.dept_id
);


-- Find the second highest salary in each department.

SELECT emp_id, emp_name, salary, dept_id
FROM employees e1
WHERE salary = (
    SELECT MAX(salary)
    FROM employees e2
    WHERE e2.dept_id = e1.dept_id
      AND e2.salary < (
          SELECT MAX(salary)
          FROM employees e3
          WHERE e3.dept_id = e1.dept_id
      )
);


-- Display employees whose salary is higher than the average salary of all employees.

SELECT emp_id, emp_name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees);
-- Show departments where total salary is greater than overall average salary.

SELECT d.dept_id, d.dept_name, SUM(e.salary) AS total_salary
FROM departments d
JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name
HAVING SUM(e.salary) > (
    SELECT AVG(salary)
    FROM employees);

-- List employees working in the same department as Alice.

SELECT *
FROM employees
WHERE dept_id = (
    SELECT dept_id
    FROM employees
    WHERE emp_name = 'Alice');

-- Display employees who earn the maximum salary in their department.

SELECT e.*
FROM employees e
WHERE e.salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE dept_id = e.dept_id);
    
    
-- Find departments where at least one employee earns more than 55,000.

SELECT DISTINCT d.dept_id, d.dept_name
FROM departments d
JOIN employees e ON d.dept_id = e.dept_id
WHERE e.salary > 55000;


-- Display employee count and average salary for each department.

SELECT 
    d.dept_id,
    d.dept_name,
    COUNT(e.emp_id) AS emp_count,
    AVG(e.salary) AS avg_salary
FROM departments d
LEFT JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name;


-- Show departments sorted by total salary in descending order.

SELECT 
    d.dept_id,
    d.dept_name,
    SUM(e.salary) AS total_salary
FROM departments d
JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name
ORDER BY total_salary DESC;


-- Find employees whose salary is less than the average salary of their department.

SELECT e.emp_id, e.emp_name, e.salary, e.dept_id
FROM employees e
WHERE e.salary < (
    SELECT AVG(salary)
    FROM employees
    WHERE dept_id = e.dept_id);