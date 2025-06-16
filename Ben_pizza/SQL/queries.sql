-- CUSTOMER INSIGHTS
-- 1. List of customers
Select * from customers;

--2. Customers who have placed order
select Distinct c.* 
from customers c
join orders o on o.cust_id = c.cust_id;

--3. Total number of orders per customer
select c.cust_id, count(o.order_id) as num_orders
from customers c
join orders o on o.cust_id = c.cust_id
group by c.cust_id; 