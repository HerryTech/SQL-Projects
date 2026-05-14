-- Total Sales
SELECT 
	SUM(qty * price) AS total_sales
	FROM retail.order_items;

-- Sales by category
SELECT c.category_name, (oi.qty * oi.price) AS total_sales
FROM retail.order_items oi
JOIN retail.products p
	ON 	oi_product_id = p.product_id
