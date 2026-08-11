# Write your MySQL query statement below
SELECT e.name , b.bonus FROM Employee e
RIGHT JOIN Bonus b 
on e.empId = b.empId
where b.bonus < 1000;
