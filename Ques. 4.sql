-- Identify the most common pizza size ordered.

SELECT 
    p.size, COUNT(o.order_details_id) AS Order_count
FROM pizzas AS p
JOIN orders_details AS o
ON o.pizza_id = p.pizza_id
GROUP BY p.size
ORDER BY Order_count DESC;
