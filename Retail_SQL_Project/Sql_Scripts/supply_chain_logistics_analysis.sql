-- Shipment Status Distribution
SELECT
    status,
    COUNT(shipment_id) AS total_shipments
FROM retail.shipments
GROUP BY status
ORDER BY total_shipments DESC;

SELECT
    ROUND(
        COUNT(
            CASE
                WHEN status = 'Delivered'
                THEN 1
            END
        ) * 100.0
        / COUNT(*),
        2
    ) AS shipment_success_rate
FROM retail.shipments;

--Revenue by Supplier
SELECT
    s.supplier_id,
    s.country,
    SUM(oi.qty * oi.price) AS total_revenue
FROM retail.suppliers s
JOIN retail.products p
    ON s.supplier_id = p.supplier_id
JOIN retail.order_items oi
    ON p.product_id = oi.product_id
GROUP BY s.supplier_id, s.country
ORDER BY total_revenue DESC;

-- Supplier Return Risk
SELECT
    s.supplier_id,
    COUNT(r.return_id) AS total_returns
FROM retail.suppliers s
JOIN retail.products p
    ON s.supplier_id = p.supplier_id
JOIN retail.order_items oi
    ON p.product_id = oi.product_id
LEFT JOIN retail.returns r
    ON oi.order_item_id = r.order_item_id
GROUP BY s.supplier_id
ORDER BY total_returns DESC;

-- Shipment Volume by Store
SELECT
    s.store_id,
    s.city,
    COUNT(sh.shipment_id) AS total_shipments
FROM retail.stores s
JOIN retail.orders o
    ON s.store_id = o.store_id
JOIN retail.shipments sh
    ON o.order_id = sh.order_id
GROUP BY s.store_id, s.city
ORDER BY total_shipments DESC;

-- Shipment Status by Store
SELECT
    s.store_id,
    sh.status,
    COUNT(sh.shipment_id) AS shipment_count
FROM retail.stores s
JOIN retail.orders o
    ON s.store_id = o.store_id
JOIN retail.shipments sh
    ON o.order_id = sh.order_id
GROUP BY s.store_id, sh.status
ORDER BY s.store_id;

-- Return Rate by Supplier
SELECT
    s.supplier_id,
    ROUND(
        COUNT(DISTINCT r.order_item_id) * 100.0
        / COUNT(DISTINCT oi.order_item_id),
        2
    ) AS return_rate_percentage
FROM retail.suppliers s
JOIN retail.products p
    ON s.supplier_id = p.supplier_id
JOIN retail.order_items oi
    ON p.product_id = oi.product_id
LEFT JOIN retail.returns r
    ON oi.order_item_id = r.order_item_id
GROUP BY s.supplier_id
ORDER BY return_rate_percentage DESC;