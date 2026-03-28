# 📊 Data Schema Refinement: API to UI Mapping

This document defines the JSON structure used to pass data from our SQL queries to the frontend dashboard.

### 1. User Profile Object
* **wallet_address:** `string` (The primary key from Rabby/ConnectKit).
* **ens_name:** `string | null` (Fetched via Wagmi if available).
* **based_score:** `number` (The final output of our 0-100 logic).

### 2. Consistency Metrics (The "Streak" Engine)
* **current_streak:** `integer` (Consecutive days active).
* **longest_streak:** `integer` (The 240+ day goal record).
* **last_active_date:** `timestamp` (To trigger the "Streak at Risk" warning).

### 3. Engagement Array (Protocol Diversity)
* **protocols_used:** `array[string]` (e.g., ["Uniswap", "Aerodrome", "Base Paint"]).
* **tx_count_total:** `integer` (Total count of successful transactions on Base).
* **gas_spent_eth:** `float` (The total contribution to network security).

### 4. Achievement Status
* **badges_earned:** `array[object]`
  * `id`: `string` (e.g., "infinity_flame")
  * `timestamp`: `date` (When the requirement was met)
  * `proof_tx`: `string` (Hash of the transaction proving the milestone)
