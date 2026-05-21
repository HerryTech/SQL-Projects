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