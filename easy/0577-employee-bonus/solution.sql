# Write your MySQL query statement below
SELECT e.name , b.Bonus FROM Employee e
JOIN Bonus b 
on e.empId = b.empId
where b.bonus < 1000;
