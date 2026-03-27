-- Query to analyze short-term network momentum 
-- by tracking daily transaction volume over the last 7 days.

SELECT 
    DATE_TRUNC('day', block_time) AS date,
    COUNT(*) AS weekly_transaction_count,
    COUNT(DISTINCT from_address) AS unique_senders
FROM 
    base.transactions
WHERE 
    block_time > NOW() - INTERVAL '7 days'
GROUP BY 1
ORDER BY 1 DESC;
