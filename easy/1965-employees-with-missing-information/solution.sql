# Write your MySQL query statement below
SELECT e.employee_id FROM Employees e
JOIN Salaries s 
ON e.employee_id = s.employee_id 
WHERE e.name IS NULL OR s.salary IS NULL 
Order by employee_id ;
