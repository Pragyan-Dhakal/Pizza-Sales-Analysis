-- Calculate the percentage contribution of each pizza type to total revenue.

select
	pt.category, round(sum(p.price*od.quantity) / (select 
round(sum(o.quantity *p.price),2) as Total_Sales
from orders_details as o
join pizzas as p
on p.pizza_id = o.pizza_id)*100, 2) as Revinue_in_Percentage

from pizzas as p
join orders_details as od
on p.pizza_id = od.pizza_id
join pizza_types as pt9
on pt.pizza_type_id = p.pizza_type_id
group by pt.category
order by Revinue_in_Percentage desc;