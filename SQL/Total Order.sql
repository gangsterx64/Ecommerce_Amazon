use ecommerce;

SELECT 
    COUNT(DISTINCT order_id) AS total_orders
FROM amazon_sales;
