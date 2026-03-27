-- This query identifies the top 50 most interacted-with 
-- smart contracts on Base in the last 7 days.

SELECT 
    to_address AS contract_address,
    COUNT(*) AS interaction_count,
    COUNT(DISTINCT from_address) AS unique_interactors
FROM 
    base.transactions
WHERE 
    block_time > NOW() - INTERVAL '7 days'
    AND to_address IS NOT NULL
GROUP BY 
    1
ORDER BY 
    2 DESC
LIMIT 50;
