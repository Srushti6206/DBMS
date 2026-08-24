# Write your MySQL query statement below
SELECT e1.name from Employee e1
JOIN Employee e2 
ON e1.id = e2.managerID
GROUP BY e1.id , e1.name
having count(e2.id) >= 5 ;



