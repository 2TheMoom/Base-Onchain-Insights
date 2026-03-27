-- Analyzes the average and max gas prices on Base over 7 days.
-- Essential for determining the 'cost of entry' for social interactions.

SELECT 
    DATE_TRUNC('day', block_time) AS date,
    AVG(gas_price) / 1e9 AS avg_gas_gwei,
    MAX(gas_price) / 1e9 AS max_gas_gwei
FROM 
    base.transactions
WHERE 
    block_time > NOW() - INTERVAL '7 days'
GROUP BY 1
ORDER BY 1 DESC;
