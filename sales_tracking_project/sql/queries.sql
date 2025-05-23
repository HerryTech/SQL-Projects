-- This query calculates the total sales amount from the sales table
SELECT SUM(total_amount) AS total_sales FROM sales;

-- This query gets total amount spent by each customer
SELECT c.customer_name, SUM (s.total_amount) AS total_spent
FROM sales s
JOIN customers c ON c.customer_id = s.customer_id
GROUP BY c.customer_name;

-- This query calculates the total sales for each product
SELECT p.product_name, SUM (s.total_amount) AS product_sales
FROM sales s
JOIN products p ON p.product_id = s.product_id
GROUP BY p.product_name;

-- This query calculates quantity sold per product
SELECT p.product_name, SUM(s.quantity) AS total_quantity_sold
FROM sales s
JOIN products p ON p.product_id = s.product_id
GROUP BY p.product_name;

-- Top 5 customers by spending
SELECT c.customer_name, SUM (s.total_amount) AS total_spent
FROM sales s
JOIN customers c ON c.customer_id = s.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 5;

-- Top 5 best selling product by revenue
SELECT p.product_name, SUM(s.total_amount) AS product_sales
FROM sales s
JOIN products p ON p.product_id = s.product_id
GROUP BY p.product_name
ORDER BY product_sales DESC
LIMIT 5;

-- Sales by month
SELECT TO_CHAR(sale_date, 'YYYY-MM') AS month, 
SUM(total_amount) AS monthly_sales
FROM sales s
GROUP BY month
ORDER BY month;

--Customer purchase frequency
SELECT c.customer_name, COUNT(s.sale_id) AS purchase_count
FROM sales s
JOIN customers c ON c.customer_id = s.customer_id
GROUP BY customer_name
ORDER BY purchase_count DESC;

-- Average Order Value (AOV)
SELECT ROUND(AVG(total_amount), 2) AS avg_order_value
FROM sales;

