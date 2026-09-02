# Write your MySQL query statement below
SELECT product_id , store1 FROM Products
WHERE store1 IS NOT NULL 
UNION
SELECT product_id , store2 FROM Products
WHERE store2 IS NOT NULL 
UNION
SELECT product_id , store3 FROM Products
WHERE store3 IS NOT NULL ;
