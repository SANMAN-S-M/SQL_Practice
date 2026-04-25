-- Composite Index (Multi-column)

create index idx_dept_salary on employees (department,salary);

select * from employees 
where department='it' and salary>6000;
