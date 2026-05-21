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

-- Yearly Growth Revenue
WITH yearly_sales AS (
    SELECT
        EXTRACT(YEAR FROM o.order_date) AS order_year,
        SUM(oi.qty * oi.price) AS total_revenue
    FROM retail.orders o
    JOIN retail.order_items oi
        ON o.order_id = oi.order_id
    GROUP BY order_year
)

SELECT
    order_year,
    total_revenue,
    LAG(total_revenue) OVER (ORDER BY order_year) AS previous_year_revenue,
    total_revenue
    - LAG(total_revenue) OVER (ORDER BY order_year) AS revenue_growth
FROM yearly_sales;

--Running Total Revenue
SELECT
    o.order_date,
    SUM(oi.qty * oi.price) AS daily_revenue,
    SUM(SUM(oi.qty * oi.price))
    OVER (ORDER BY o.order_date) AS running_total_revenue
FROM retail.orders o
JOIN retail.order_items oi
    ON o.order_id = oi.order_id
GROUP BY o.order_date
ORDER BY o.order_date;

-- Top Performing Stores
SELECT
    s.store_id,
    s.city,
    SUM(oi.qty * oi.price) AS total_revenue,
    RANK() OVER (
        ORDER BY SUM(oi.qty * oi.price) DESC
    ) AS revenue_rank
FROM retail.orders o
JOIN retail.order_items oi
    ON o.order_id = oi.order_id
JOIN retail.stores s
    ON o.store_id = s.store_id
GROUP BY s.store_id, s.city;