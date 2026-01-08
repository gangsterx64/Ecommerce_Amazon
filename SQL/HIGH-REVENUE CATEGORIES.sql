use ecommerce;


-- HIGH-REVENUE CATEGORIES
SELECT 
    s.category,
    SUM(a.amount) AS category_revenue
FROM amazon_sales a
LEFT JOIN sale_report s
    ON a.sku = s.sku_code
GROUP BY s.category
ORDER BY category_revenue DESC;

