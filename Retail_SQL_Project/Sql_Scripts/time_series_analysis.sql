-- Monthly Revenue Trend
SELECT
    EXTRACT(YEAR FROM o.order_date) AS order_year,
    EXTRACT(MONTH FROM o.order_date) AS order_month,
    SUM(oi.qty * oi.price) AS total_revenue
FROM retail.orders o
JOIN retail.order_items oi
    ON o.order_id = oi.order_id
GROUP BY order_year, order_month
ORDER BY order_year, order_month;