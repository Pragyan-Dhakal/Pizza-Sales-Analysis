-- Calculate the total revinue generated from pizza sales.

select 
round(sum(o.quantity *p.price),2) as Total_Sales
from orders_details as o
join pizzas as p
on p.pizza_id = o.pizza_id;   #ctrl + b to make the code beautiful
