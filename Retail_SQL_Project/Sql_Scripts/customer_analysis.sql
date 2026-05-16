-- Total Customers
SELECT 
	COUNT(DISTINCT customer_id) AS total_customers 
FROM retail.customers;

-- Customers by City
SELECT
	city, COUNT(DISTINCT customer_id) AS total_customers
FROM retail.customers
GROUP BY city
ORDER BY total_customers DESC;
