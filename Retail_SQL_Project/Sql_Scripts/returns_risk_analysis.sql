-- Total Returned Items
SELECT 
	COUNT(return_id) AS total_returns
FROM retail.returns;

-- Total Refund Amount
SELECT 
	SUM(refund) AS total_refund
FROM retail.returns;

--Return Rate
SELECT
	COUNT(r.order_item_id) / COUNT(oi.order_item_id) AS return_rate
FROM retail.order_items oi
LEFT JOIN retail.returns r
	ON r.order_item_id = oi.order_item_id;