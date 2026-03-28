# Research: Integrating the "Active Streak" Metric into User Reputation

Based on research into high-fidelity on-chain analytics, the "Active Streak" (defined as consecutive days/weeks with transaction activity) is a primary indicator of genuine user loyalty and "Based" behavior.

Unlike transaction volume, which can be easily sybiled (manipulated), consistency over time demonstrates true commitment to the Base ecosystem.

## Planned Application for the Social Engagement Analyzer:

### 1. The "Streak Score" Component
The final scoring model will heavily weight a user's `longest streak` and `unique days active`. A proposed logic:
* **0-7 Days (Entry):** 10 points
* **30-90 Days (Consistent):** 40 points
* **180+ Days (Based Elite):** 60 points

### 2. Implementation with Base Data
We will draft a specific SQL query (for a future commit) that utilizes `DATE_TRUNC('day', block_time)` from `base.transactions` to calculate day-over-day gaps. The logic must define an activity "gap" (e.g., >24 hours or >7 days) that resets the active streak counter.
