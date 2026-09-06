# Write your MySQL query statement below
SELECT p.product_id , p.product_name 
FROM Product p 
JOIN Sales s
ON p.product_id = s.product_id 
WHERE s.sale_date between '2019-01-01'and '2019-03-31'; 
