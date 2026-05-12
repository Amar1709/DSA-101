# Write your MySQL query statement below
with dept_win as
(
    select E.id,
    E.name as 'Employee',
    E.salary,
    E.departmentId,
    D.name as 'Department',
    dense_rank() over (partition by D.name order by E.salary desc) as drnk
    from Employee E
    join Department D on D.id = E.departmentId
)

select Department,
Employee,
Salary
from dept_win
where drnk=1
