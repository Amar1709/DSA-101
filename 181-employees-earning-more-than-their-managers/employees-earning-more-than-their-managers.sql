# Write your MySQL query statement below
with cte as
(
    select E.id,
    E.name,
    E.salary,
    M.salary as mg_salary
    from Employee E, Employee M
    where E.managerId = M.id
)

select name as 'Employee'
from cte
where salary>mg_salary