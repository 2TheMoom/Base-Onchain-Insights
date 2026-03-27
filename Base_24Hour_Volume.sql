-- Query to track real-time transaction volume 
-- by counting total transactions on Base in the last 24 hours.

SELECT 
    COUNT(*) AS total_tx_24h,
    COUNT(DISTINCT from_address) AS active_wallets_24h
FROM 
    base.transactions
WHERE 
    block_time > NOW() - INTERVAL '24 hours';
