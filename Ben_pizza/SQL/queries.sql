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

-- SALES & REVENUE
-- 4. Total revenue generated
select sum(p.amount) as total_revenue
from payment p
where pay_status = 'Paid';

--4. Daily revenue
select Date(paid_at) as date, sum(p.amount) as revenue
from payment p
where pay_status = 'Paid'
group by date
order by date;

--5. Revenue by item
select i.item_name, sum(p.amount) as revenue
from orders o
join items i on o.item_id = i.item_id
join payment p on o.row_id = p.row_id
where p.pay_status = 'Paid'
group by item_name
order by revenue desc;

-- INVENTORY MONITORING
--6. Current stock levels
select ing.ing_name, inv.quantity, ing.ing_meas
from inventory inv
join ingredients ing on ing.ing_id = inv.ing_id;

--7. Low stock ingredients (less than 5000)
select ing.ing_name, inv.quantity, ing.ing_meas
from inventory inv
join ingredients ing on ing.ing_id = inv.ing_id
where inv.quantity < 5000;

-- ORDERS ANALYSIS
--8. Top 5 most ordered items
select i.item_name, sum(o.order_id) as total_order
from items i
join orders o on o.item_id = i.item_id
group by i.item_name
order by total_order desc
limit 5;

--9. Orders per day
select Date(created_at) as order_date, count(o.order_id) as total_order
from orders o
group by Date(created_at)
order by order_date;


