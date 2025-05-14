-- This query calculates the total sales amount from the sales table
SELECT SUM(total_amount) AS total_sales FROM sales;

-- This query gets total amount spent by each customer
SELECT c.customer_name, SUM (s.total_amount) AS total_spent
FROM sales s
JOIN customers c ON c.customer_id = s.customer_id

