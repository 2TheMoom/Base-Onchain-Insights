# 🗺️ Social Analyzer: Logic Model & Data Flow

This diagram illustrates how the "Based Score" is calculated from raw on-chain data to final reputation.

### 1. Data Input (Raw Layer)
* **Transaction History:** All `from_address` activities on Base.
* **Smart Contract Interactions:** Logs of unique contract addresses (DEX, NFTs, Social).
* **Gas Consumption:** Cumulative ETH spent on transaction fees.

### 2. Processing Layer (SQL Logic)
* **Streak Calculator:** Uses the "difference-of-row-numbers" method to find consecutive active days.
* **Diversity Filter:** Groups interactions by protocol type to measure ecosystem variety.
* **Time Analysis:** Calculates "Wallet Age" from the first block timestamp.

### 3. Weighting Layer (Reputation Engine)
* **Consistency (40%):** Rewards long-term active streaks (e.g., 200+ days).
* **Participation (30%):** Rewards interaction with 5+ unique protocols.
* **Loyalty (20%):** Rewards wallets that have been on Base for >1 year.
* **Contribution (10%):** Rewards users providing gas to the network.

### 4. Output Layer (User Profile)
* **Final Based Score:** A 1-100 rating displayed on the Mini-App.
* **Achievement Badges:** "Streak Master," "Early Builder," "Protocol Explorer."
