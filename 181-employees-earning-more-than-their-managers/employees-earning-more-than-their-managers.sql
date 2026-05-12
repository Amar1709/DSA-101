# Write your MySQL query statement below
with cte as
(
    select e.id,
    e.name,
    e.salary,
    m.salary as mg_salary
    from Employee e
    join Employee m on m.id = e.managerId
)

select name as 'Employee'
from cte
where salary>mg_salary