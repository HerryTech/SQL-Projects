-- Shipment Status Distribution
SELECT
    status,
    COUNT(shipment_id) AS total_shipments
FROM retail.shipments
GROUP BY status
ORDER BY total_shipments DESC;