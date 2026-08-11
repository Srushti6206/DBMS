# Write your MySQL query statement below
SELECT e.name , b.bonus as Bonus FROM Employee e
LEFT JOIN Bonus b 
on e.empId = b.empId
where b.bonus < 1000;
