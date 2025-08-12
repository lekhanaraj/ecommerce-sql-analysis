Sales Trend Analysis
-- Goal: Calculate month-on-month sales percentage change.
WITH monthly_sales AS (
    SELECT  
        DATE_FORMAT(order_date, '%Y-%m') AS Month,
        SUM(total_amount) AS TotalSales 
    FROM Orders 
    GROUP BY DATE_FORMAT(order_date, '%Y-%m')
)
SELECT  
    Month,
    TotalSales,
    ROUND(
        (TotalSales - LAG(TotalSales) OVER (ORDER BY Month)) 
        * 100 / LAG(TotalSales) OVER (ORDER BY Month),
        2
    ) AS PercentChange 
FROM monthly_sales;
