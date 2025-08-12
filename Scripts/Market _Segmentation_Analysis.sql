-- 1. Market Segmentation Analysis
-- Goal: Identify top 3 locations with the highest number of customers.
SELECT  
    location,
    COUNT(customer_id) AS number_of_customers
FROM Customers 
GROUP BY location
ORDER BY number_of_customers DESC 
LIMIT 3;