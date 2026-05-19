-- Total Returned Items
SELECT 
	COUNT(return_id) AS total_returns
FROM retail.returns;

-- Total Refund Amount
SELECT 
	SUM(refund) AS total_refund
FROM retail.returns;
