DELETE e1 FROM employees e1
JOIN employees e2
ON e1.employee_id = e2.employee_id
AND e1.employee_id > e2.employee_id;


UPDATE employees
SET age = (
    SELECT avg_age
    FROM (
        SELECT ROUND(AVG(age)) AS avg_age
        FROM employees
    ) AS temp
)
WHERE age IS NULL;


UPDATE employees
SET salary = (
    SELECT avg_salary
    FROM (
        SELECT ROUND(AVG(salary)) AS avg_salary
        FROM employees
    ) AS temp
)
WHERE salary IS NULL;