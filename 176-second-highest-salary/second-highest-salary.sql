# Write your MySQL query statement below
select (
    select salary 
    from (
        select salary,
        dense_rank () over (order by salary desc) as rank_no
        from Employee
    ) as salary_ranks
    where rank_no = 2
    limit 1
) as SecondHighestSalary;