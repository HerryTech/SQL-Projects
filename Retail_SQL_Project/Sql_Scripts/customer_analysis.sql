-- Total Customers
SELECT 
	COUNT(DISTINCT customer_id) AS total_customers 
FROM retail.customers;

-- Customers by City
SELECT
	city, COUNT(customer_id) AS total_customers
FROM retail.customers
GROUP BY city
ORDER BY total_customers DESC;

-- Top 10 Customers by Revenue
SELECT 
	c.customer_id, SUM(oi.qty * oi.price) AS total_revenue
FROM retail.order_items oi
JOIN retail.orders o
	ON oi.order_id = o.order_id
JOIN retail.customers c
	ON o.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY total_revenue
LIMIT 10;

-- AVerage Customer Spend
SELECT 
	SUM(oi.qty * oi.price) / COUNT(DISTINCT c.customer_id) AS average_customer_spend
FROM retail.order_items oi
JOIN retail.orders o
	ON oi.order_id = o.order_id
JOIN retail.customers c
	ON o.customer_id = c.customer_id;

-- Customer Order Frequency
SELECT
    customer_id,
    COUNT(order_id) AS total_orders
FROM retail.orders
GROUP BY customer_id
ORDER BY total_orders DESC;

-- Customer Signup Trend
SELECT
	EXTRACT(YEAR FROM signup_date) AS signup_year,
	COUNT(customer_id) AS total_customers
FROM retail.customers
GROUP BY signup_year
ORDER BY signup_year;

