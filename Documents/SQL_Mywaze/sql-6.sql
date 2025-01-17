--Salary > 500000
SELECT
    department,
    name,
    position;
FROM employees 
WHERE salary>500000;


--salary top 3
SELECT
    department,
    name,
    position;
FROM employees 
ORDER BY salary DESC
LIMIT 3;