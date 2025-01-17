SELECT
    e.department,
    e.name AS employee_name,
    e.salary AS highest_salary
FROM employees AS e
JOIN (
    -- Find the max salary for each department
    SELECT
        department,
        MAX(salary) AS max_salary
    FROM employees
    GROUP BY department
) AS sub
    ON e.department = sub.department
   AND e.salary     = sub.max_salary;
