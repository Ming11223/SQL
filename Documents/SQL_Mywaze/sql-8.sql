CREATE INDEX idx_employees_dept_salary 
ON employees(department, salary);

--This composite index will help the database quickly locate rows based on department and salary, which can speed up queries that filter on these two columns.