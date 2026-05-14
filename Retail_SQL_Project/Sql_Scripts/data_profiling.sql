-- check for row counts
SELECT 'categories' AS table_name, COUNT(*) FROM retail.categories
UNION ALL
SELECT 'customers', COUNT(*) FROM retail.customers
UNION ALL
SELECT 'orders', COUNT(*) FROM retail.orders
UNION ALL
SELECT 'order_items', COUNT(*) FROM retail.order_items
UNION ALL
SELECT 'products', COUNT(*) FROM retail.products
UNION ALL
SELECT 'suppliers', COUNT(*) FROM retail.suppliers
UNION ALL
SELECT 'stores', COUNT(*) FROM retail.stores
UNION ALL
SELECT 'payments', COUNT(*) FROM retail.payments
UNION ALL
SELECT 'shipments', COUNT(*) FROM retail.shipments
UNION ALL
SELECT 'returns', COUNT(*) FROM retail.returns
UNION ALL
SELECT 'employees', COUNT(*) FROM retail.employees
UNION ALL
SELECT 'promotions', COUNT(*) FROM retail.promotions;

-- check for duplicates
SELECT order_id, COUNT(*) AS duplicate_count FROM retail.orders
GROUP BY order_id
HAVING COUNT(*) > 1;