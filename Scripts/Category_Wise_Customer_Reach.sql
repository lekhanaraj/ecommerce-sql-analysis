Category-Wise Customer Reach
-- Goal: Find the number of unique customers purchasing from each product category.
SELECT
    p.category,
    COUNT(DISTINCT o.customer_id) AS unique_customers
FROM Orders o
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id 
GROUP BY p.category
ORDER BY unique_customers DESC;
