# Write your MySQL query statement below
SELECT MAX(num) as num FROM MyNumbers
HAVING  COUNT(num) = 1  ;
