-- Customer Insights
-- 1. List of customers
Select * from customers;

--2. Customers who have placed order
select Distinct c.* 
from customers c
JOIN orders o on o.cust_id = c.cust_id;

