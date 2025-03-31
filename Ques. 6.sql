-- Join the necessary table to find the total quantity of each pizza category order

select 
pt.category, sum(od.quantity) as Quantity
from pizza_types as pt
join pizzas as p
on pt.pizza_type_id = p.pizza_type_id
join orders_details as od
on p.pizza_id = od.pizza_id
group by Category
order by quantity desc;

