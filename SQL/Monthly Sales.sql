USE ecommerce;

-- Monthly Sales Trend

SELECT
    EXTRACT(YEAR FROM date) AS year,
    EXTRACT(MONTH FROM date) AS month,
    SUM(amount) AS monthly_sales
FROM amazon_sales
GROUP BY
    EXTRACT(YEAR FROM date),
    EXTRACT(MONTH FROM date)
ORDER BY year, month;
