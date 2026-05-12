# Write your MySQL query statement below
with cte1 as
(
    select num,
    lag(num,1) over () as p_num1,
    lag(num,2) over () as p_num2
    from Logs
)

select distinct num as ConsecutiveNums
from cte1
where num = p_num1 and p_num1 = p_num2