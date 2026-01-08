use ecommerce;

-- TOP INTERNATIONAL PRODUCTS

SELECT 
    sku,
    SUM(gross_amount) AS international_revenue
FROM international_sales
GROUP BY sku
ORDER BY international_revenue DESC
LIMIT 10;
