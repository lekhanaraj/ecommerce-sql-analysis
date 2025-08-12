Purchase High-Value Products
-- Goal: Identify products with high average purchase quantity and total revenue.
SELECT  
    product_id,
    AVG(quantity) AS AvgQuantity,
    SUM(price_per_unit * quantity) AS TotalRevenue
FROM OrderDetails 
GROUP BY product_id
HAVING AVG(quantity) >= 2
ORDER BY TotalRevenue DESC;