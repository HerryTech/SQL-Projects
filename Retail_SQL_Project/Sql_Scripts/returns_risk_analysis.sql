-- Total Returned Items
SELECT 
	COUNT(return_id) AS total_returns
FROM retail.returns;

-- Total Refund Amount
SELECT 
	SUM(refund) AS total_refund
FROM retail.returns;

--Return Rate
SELECT
	COUNT(DISTINCT r.order_item_id) * 100.0 
	/ COUNT(DISTINCT oi.order_item_id) AS return_rate
FROM retail.order_items oi
LEFT JOIN retail.returns r
	ON r.order_item_id = oi.order_item_id;

-- Returns by Category
SELECT
    c.category_name,
    COUNT(r.return_id) AS total_returns
FROM retail.returns r
JOIN retail.order_items oi
    ON r.order_item_id = oi.order_item_id
JOIN retail.products p
    ON oi.product_id = p.product_id
JOIN retail.categories c
    ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY total_returns DESC;

-- Refund Amount by Category
SELECT
    c.category_name,
    SUM(r.refund) AS total_refund
FROM retail.returns r
JOIN retail.order_items oi
    ON r.order_item_id = oi.order_item_id
JOIN retail.products p
    ON oi.product_id = p.product_id
JOIN retail.categories c
    ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY total_refund DESC;

-- Top 10 Most Returned Products
SELECT
    p.product_id,
    COUNT(r.return_id) AS total_returns
FROM retail.returns r
JOIN retail.order_items oi
    ON r.order_item_id = oi.order_item_id
JOIN retail.products p
    ON oi.product_id = p.product_id
ORDER BY total_returns DESC
LIMIT 10;

