-- Query to track the growth of the Base ecosystem 
-- by calculating total daily transactions over 30 days.

SELECT 
    DATE_TRUNC('day', block_time) AS date,
    COUNT(*) AS daily_transaction_count
FROM 
    base.transactions
WHERE 
    block_time > NOW() - INTERVAL '30 days'
GROUP BY 1
ORDER BY 1 DESC;
