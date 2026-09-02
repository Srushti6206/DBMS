# Write your MySQL query statement below
SELECT u.name , SUM(r.distance) as travelled_distance 
FROM Users u
LEFT JOIN Rides r
ON u.id = r.user_id 
GROUP BY u.name 
ORDER BY SUM(r.distance) DESC , u.name ASC ;
