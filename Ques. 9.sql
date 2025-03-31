-- Group the order by date and calculate the average number of pizzas orders per day.

select round(avg(Quantity),2) as Average_Quantity from
(select o.date, sum(od.quantity) as Quantity
from orders as o
join orders_details as od
on o.order_id = od.order_id
group by date) as order_quantity;  #Sub Quary 