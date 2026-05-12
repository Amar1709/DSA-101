# Write your MySQL query statement below
select name as 'Customers'
from (
    select c.id,
    c.name,
    o.customerId as cid
    from Customers c
    left join Orders o on o.customerId = c.id
) subq
where cid is Null