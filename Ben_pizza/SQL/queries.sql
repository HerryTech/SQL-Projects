-- Customer Insights
-- 1. List of customers
Select * from customers;

-- Total Orders
Select Count(o.orders_id) as Total_order
from orders o;
