FROM Employees e
SELECT e.employee_id
# Write your MySQL query statement below
LEFT JOIN Salaries s
ON e.employee_id = s.employee_id
WHERE s.employee_id IS NULL

UNION

SELECT s.employee_id
FROM Salaries s
LEFT JOIN Employees e
    ON s.employee_id = e.employee_id
WHERE e.employee_id IS NULL
