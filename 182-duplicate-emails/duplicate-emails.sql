# Write your MySQL query statement below
with cte as
(
    select id,
    email,
    row_number() over (partition by email) as rn
    from Person
)

select distinct email as Email
from cte
where rn>1