USE ecommerce;

-- Total Sales (Core KPI) 
SELECT 
    SUM(amount) AS total_sales
FROM amazon_sales;
