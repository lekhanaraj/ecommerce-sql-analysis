Inventory Refresh Rate
-- Goal: Identify products with the highest sales frequency.
SELECT  
    product_id,
    COUNT(order_id) AS SalesFrequency
FROM OrderDetails
GROUP BY product_id 
ORDER BY SalesFrequency DES
