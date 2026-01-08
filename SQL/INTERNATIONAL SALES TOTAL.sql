use ecommerce;

-- INTERNATIONAL SALES TOTAL
SELECT 
    SUM(gross_amount) AS total_revenue
FROM international_sales;

