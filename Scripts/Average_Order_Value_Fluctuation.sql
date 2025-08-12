Average Order Value Fluctuation
-- Goal: Track changes in average order value over time.
WITH avgordervalue AS (
    SELECT 
        DATE_FORMAT(order_date, '%Y-%m') AS Month,
        SUM(total_amount) / COUNT(DISTINCT order_id) AS AvgOrderValue 
    FROM Orders 
    GROUP BY DATE_FORMAT(order_date, '%Y-%m')
)
SELECT  
    Month,
    ROUND(AvgOrderValue, 2) AS AvgOrderValue,
    ROUND(
        AvgOrderValue - LAG(AvgOrderValue) OVER (ORDER BY Month), 
        2
    ) AS ChangeInValue 
FROM avgordervalue
ORDER BY ChangeInValue DESC;
