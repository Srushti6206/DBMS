# Write your MySQL query statement below
SELECT e1.employee_id FROM Employees e1
LEFT JOIN Employees e2
ON e1.employee_id = e2.manager_id
where e1.salary < 30000 AND 
     e2.manager_id IS NULL ;

