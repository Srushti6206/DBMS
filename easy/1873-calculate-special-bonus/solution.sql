# Write your MySQL query statement below
SELECT employee_id , salary * 2 AS  bonus
FROM Employees
WHERE employee_id % 2 <> 0 
ORDER BY employee_id ;

