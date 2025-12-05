CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT BEGIN 
SET N = N -1;
    RETURN (
        # Write your MySQL query statement below.
        -- select salary
        -- from (
        --     select distinct(salary),
        --         dense_rank() over (order by salary desc) as rank_no
        --     from Employee
        -- ) as ranking
        -- where rank_no = N
        select distinct(salary)
        from  Employee
        order by salary desc
        limit 1 OFFSET N
    );
    END