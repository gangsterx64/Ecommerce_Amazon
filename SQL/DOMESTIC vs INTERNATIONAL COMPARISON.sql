use ecommerce;

-- DOMESTIC vs INTERNATIONAL COMPARISON

SELECT 
    'Domestic' AS market,
    SUM(amount) AS revenue
FROM amazon_sales

UNION ALL

SELECT 
    'International' AS market,
    SUM(gross_amount) AS revenue
FROM international_sales;


