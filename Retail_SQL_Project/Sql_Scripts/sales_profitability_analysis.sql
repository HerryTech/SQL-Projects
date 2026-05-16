-- Total Revenue
SELECT 
	SUM(qty * price) AS total_revenue
	FROM retail.order_items;

-- Revenue by Category
SELECT c.category_name, SUM(oi.qty * oi.price) AS total_revenue
FROM retail.order_items oi
JOIN retail.products p
	ON 	oi.product_id = p.product_id
JOIN retail.categories c
	ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY total_revenue DESC;

-- Revenue by Store
SELECT s.store_id AS table_name, SUM(oi.qty * oi.price) AS total_revenue
FROM retail.order_items oi
JOIN retail.orders o
	ON oi.order_id = o.order_id
JOIN retail.stores s
	ON o.store_id = s.store_id
GROUP BY s.store_id
ORDER BY total_revenue DESC;
