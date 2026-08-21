# Write your MySQL query statement below
SELECT u.name , SUM(t.amount) as balance
FROM Users u
JOIN Transactions t
ON u.account = t.account 
Group by t.amount
HAVING SUM(t.amount)>10000;
