-- This advanced query calculates the 'longest active streak' for a specific wallet.
-- It identifies consecutive days of activity on the Base network.

WITH daily_activity AS (
    SELECT 
        from_address,
        DATE_TRUNC('day', block_time) AS activity_date
    FROM base.transactions
    WHERE from_address = '{{wallet_address}}' -- Placeholder for user input
    GROUP BY 1, 2
),
numbered_activity AS (
    SELECT 
        activity_date,
        -- Subtracting the row number from the date creates a constant 'group' for consecutive days
        activity_date - (ROW_NUMBER() OVER (ORDER BY activity_date) * INTERVAL '1 day') AS streak_group
    FROM daily_activity
),
streak_lengths AS (
    SELECT 
        COUNT(*) AS streak_duration,
        MIN(activity_date) AS streak_start,
        MAX(activity_date) AS streak_end
    FROM numbered_activity
    GROUP BY streak_group
)
SELECT 
    MAX(streak_duration) AS longest_streak_days
FROM streak_lengths;
