-- Finds the top 20 most active individual wallets on Base (last 24h).
-- These are the 'Main Characters' our social analyzer would track.

SELECT 
    from_address AS wallet_address,
    COUNT(*) AS tx_count
FROM 
    base.transactions
WHERE 
    block_time > NOW() - INTERVAL '24 hours'
    -- Excludes contract-to-contract internal calls for clarity
GROUP BY 1
ORDER BY 2 DESC
LIMIT 20;
