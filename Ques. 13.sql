-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.

select
name, revenue
from
(select category, name, revenue,
rank() over(partition by category order by revenue desc) as Ranks
from
(select
pt.category, pt.name,
round(sum(od.quantity*p.price), 2) as Revenue
from pizza_types as pt
join pizzas as p
on pt.pizza_type_id = p.pizza_type_id
join orders_details as od
on od.pizza_id = p.pizza_id
group by category, name ) as a)as b
where Ranks <=3;