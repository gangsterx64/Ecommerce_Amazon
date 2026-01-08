use ecommerce;

-- BEST-SELLING PRODUCTS (TOP 10 SKUs)

SELECT 
    sku,
    SUM(amount) AS total_revenue
FROM amazon_sales
GROUP BY sku
ORDER BY total_revenue DESC
LIMIT 10;
