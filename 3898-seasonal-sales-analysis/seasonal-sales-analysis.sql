# Write your MySQL query statement below
select
    season,
    category,
    total_quantity,
    total_revenue
from (
        select
            case 
                when Month(sale_date) in (9,10,11) then 'Fall'
                when Month(sale_date) in (3,4,5) then 'Spring'
                when Month(sale_date) in (6,7,8) then 'Summer'
                else 'Winter'
            end as season,
            p.category,
            sum(s.quantity) as total_quantity,
            sum(round(s.quantity*s.price,2)) as total_revenue,
            row_number() over (partition by 
                case 
                when Month(sale_date) in (9,10,11) then 'Fall'
                when Month(sale_date) in (3,4,5) then 'Spring'
                when Month(sale_date) in (6,7,8) then 'Summer'
                else 'Winter'
                end
            order by sum(s.quantity) desc,
            sum(round(s.quantity*s.price,2)) desc) as rn
        from sales s
        join products p on s.product_id = p.product_id
        group by season, p.category
    ) t
where rn= 1
order by season asc