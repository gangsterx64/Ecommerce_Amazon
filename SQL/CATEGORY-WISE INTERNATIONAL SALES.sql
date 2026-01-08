use ecommerce;

-- CATEGORY-WISE INTERNATIONAL SALES
SELECT
    COALESCE(s.category, 'Unknown') AS category,
    SUM(i.gross_amount) AS international_revenue
FROM international_sales i
LEFT JOIN sale_report s
    ON i.sku = s.sku_code
GROUP BY COALESCE(s.category, 'Unknown')
ORDER BY international_revenue DESC;

