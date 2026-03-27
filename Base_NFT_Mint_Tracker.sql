-- Tracks the most active NFT mints on Base in the last 24 hours.
-- Identifying these helps us understand trending social communities.

SELECT 
    to_address AS nft_contract,
    COUNT(*) AS mint_count,
    COUNT(DISTINCT from_address) AS unique_minters
FROM 
    base.transactions
WHERE 
    block_time > NOW() - INTERVAL '24 hours'
    -- Filters for common mint function signatures
    AND (LOWER(data) LIKE '0xa0712d68%' OR LOWER(data) LIKE '0x4e6f8905%') 
GROUP BY 1
ORDER BY 2 DESC
LIMIT 20;
