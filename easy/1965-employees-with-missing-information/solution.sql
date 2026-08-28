SELECT e.employee_id FROM Employees e
LEFT JOIN Salaries s 
ON e.employee_id = s.employee_id 
WHERE e.name IS NULL 
UNION
SELECT e.employee_id FROM Employees e
LEFT JOIN Salaries s 
ON e.employee_id = s.employee_id 
WHERE s.salary IS NULL
Order by employee_id ;
# Write your MySQL query statement below
