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
	COUNT(r.return_id) / COUNT(r.order_item_id)
FROM retail.returns r
JOIN retail.order_items oi
	ON r.order_item_id = oi.order_item_id;