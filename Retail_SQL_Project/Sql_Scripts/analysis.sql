-- Total Sales
SELECT 
	SUM(qty * price) AS total_sales
	FROM retail.order_items;

-- Sales by category
SELECT c.category_name, (oi.qty * oi.price) AS total_sales
FROM retail.order_items oi
JOIN retail.products p
	ON 	oi.product_id = p.product_id
JOIN retail.categories c
	ON p.category_id = c.category_id
GROUP BY c.category_name;