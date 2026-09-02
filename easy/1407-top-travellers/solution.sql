LEFT JOIN Rides r
ON u.id = r.user_id 
GROUP BY u.id , u.name 
ORDER BY travelled_distance DESC , u.name ASC ;



FROM Users u
# Write your MySQL query statement below
SELECT u.name , COALESCE(SUM(r.distance),0) as travelled_distance 
