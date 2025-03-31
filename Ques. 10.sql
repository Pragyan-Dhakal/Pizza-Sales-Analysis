-- Determine the top 3 most ordered pizza types based on revenue.

select
	pt.name, round(sum(p.price*od.quantity),2) as Revinue
from pizzas as p
join orders_details as od
on p.pizza_id = od.pizza_id
join pizza_types as pt
on pt.pizza_type_id = p.pizza_type_id
group by pt.name
order by revinue desc
limit 3;