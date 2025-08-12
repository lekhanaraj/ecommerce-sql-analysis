Engagement Depth Analysis
-- Goal: Understand how many customers fall into different order frequency ranges.
SELECT  
    NumberOfOrders, 
    COUNT(customer_id) AS CustomerCount
FROM (
    SELECT  
        customer_id, 
        COUNT(order_id) AS NumberOfOrders
    FROM Orders
    GROUP BY customer_id
) AS customer_orders
GROUP BY NumberOfOrders
ORDER BY NumberOfOrders ASC;
