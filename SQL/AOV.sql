USE ecommerce;

-- AOV
SELECT 
    SUM(amount) / COUNT(DISTINCT order_id) AS avg_order_value
FROM amazon_sales;
