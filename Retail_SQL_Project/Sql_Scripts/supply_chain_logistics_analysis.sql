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

-- Return by Supplier
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