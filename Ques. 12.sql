-- Analyze the cumulative revenue generated over time

select 
date, round(sum(revenue) over(order by date), 2)  as Cum_revinue
from
(select 
o.date, round(sum(od.quantity*p.price), 2) as Revenue
from orders_details as od
join pizzas as p
on od.pizza_id = p.pizza_id
join orders as o
on o.order_id = od.order_id
group by date) as Sales; 