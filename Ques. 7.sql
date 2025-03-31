-- Determine the distribution of order by hour of the day.

SELECT 
    HOUR(time) AS Hours, COUNT(order_id) AS Order_Count
FROM
    orders
GROUP BY HOUR(time)
ORDER BY Hours;