# Write your MySQL query statement below
select s.name from
SalesPerson s 
join Company c 
join orders o
    on s.sales_id = o.sales_id
    on c.com_id=o.com_id
    where c.name <> 'RED';
