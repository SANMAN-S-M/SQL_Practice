UPDATE employees
SET join_date = REPLACE(join_date,'/','-');

UPDATE employees
SET join_date = STR_TO_DATE(join_date,'%d-%m-%Y')
WHERE join_date LIKE '__-__-____';


ALTER TABLE employees
MODIFY join_date DATE;

UPDATE employees
SET department = UPPER(department);


SELECT employee_id, COUNT(*)
FROM employees
GROUP BY employee_id
HAVING COUNT(*) > 1;