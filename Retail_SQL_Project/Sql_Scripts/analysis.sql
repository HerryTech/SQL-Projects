-- Total Sales
SELECT 
	SUM(qty * price) AS total_sales
	FROM retail.order_items;