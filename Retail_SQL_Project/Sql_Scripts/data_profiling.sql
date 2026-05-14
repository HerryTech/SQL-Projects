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
SELECT 
    'categories' AS table_name,
    COUNT(*) - COUNT(DISTINCT category_id) AS duplicate_count
FROM retail.categories

UNION ALL

SELECT 
    'customers',
    COUNT(*) - COUNT(DISTINCT customer_id)
FROM retail.customers

UNION ALL

SELECT 
    'orders',
    COUNT(*) - COUNT(DISTINCT order_id)
FROM retail.orders

UNION ALL

SELECT 
    'order_items',
    COUNT(*) - COUNT(DISTINCT order_item_id)
FROM retail.order_items

UNION ALL

SELECT 
    'products',
    COUNT(*) - COUNT(DISTINCT product_id)
FROM retail.products

UNION ALL

SELECT 
    'suppliers',
    COUNT(*) - COUNT(DISTINCT supplier_id)
FROM retail.suppliers

UNION ALL

SELECT 
    'stores',
    COUNT(*) - COUNT(DISTINCT store_id)
FROM retail.stores

UNION ALL

SELECT 
    'employees',
    COUNT(*) - COUNT(DISTINCT employee_id)
FROM retail.employees

UNION ALL

SELECT 
    'promotions',
    COUNT(*) - COUNT(DISTINCT promotion_id)
FROM retail.promotions

UNION ALL

SELECT 
    'payments',
    COUNT(*) - COUNT(DISTINCT payment_id)
FROM retail.payments

UNION ALL

SELECT 
    'shipments',
    COUNT(*) - COUNT(DISTINCT shipment_id)
FROM retail.shipments

UNION ALL

SELECT 
    'returns',
    COUNT(*) - COUNT(DISTINCT return_id)
FROM retail.returns;

-- Check for missng values
SELECT
    'customers' AS table_name,
    COUNT(*) AS total_rows,
    COUNT(city) AS non_null_city,
    COUNT(signup_date) AS non_null_signup_date
FROM retail.customers

UNION ALL

SELECT
    'orders',
    COUNT(*),
    COUNT(customer_id),
    COUNT(store_id)
FROM retail.orders

UNION ALL

SELECT
    'products',
    COUNT(*),
    COUNT(category_id),
    COUNT(supplier_id)
FROM retail.products

UNION ALL

SELECT
    'order_items',
    COUNT(*),
    COUNT(order_id),
    COUNT(product_id)
FROM retail.order_items;