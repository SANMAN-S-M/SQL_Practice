-- STEP 5: Check Invalid Ages
SELECT * FROM employees
WHERE age IS NOT NULL
AND age NOT REGEXP '^[0-9]+$';

ALTER TABLE employees
MODIFY age INT;

UPDATE employees
SET salary = NULL
WHERE salary = 'NULL';


SELECT * FROM employees
WHERE salary IS NOT NULL
AND salary NOT REGEXP '^[0-9]+$';


ALTER TABLE employees
MODIFY salary INT;