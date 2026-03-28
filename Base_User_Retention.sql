-- Identifies 'New' vs 'Returning' wallets in the last 24h.
-- This logic helps our Social Analyzer prioritize loyal community members 
-- over one-time sybil accounts.

WITH first_tx AS (
    SELECT from_address, MIN(block_time) as join_date
    FROM base.transactions
    GROUP BY 1
)
SELECT 
    CASE 
        WHEN join_date > NOW() - INTERVAL '24 hours' THEN 'New User' 
        ELSE 'Returning Builder' 
    END AS status,
    COUNT(*) AS wallet_count
FROM first_tx
GROUP BY 1;
