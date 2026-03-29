# 📊 SQL Library: On-Chain Logic & Data Models

This document serves as a guide for the structured query language (SQL) files used to power the Social Engagement Analyzer on Base.

### 1. User Retention & Streaks (`User_Retention.sql`)
* **Purpose:** Identifies "Returning Builders" vs. "New Users."
* **Logic:** Filters for addresses with at least 1 transaction per week over a 6-month period.
* **Metric:** Powering the "Infinity Flame" (240+ day) calculation.

### 2. Protocol Diversity (`Track_Users.sql`)
* **Purpose:** Maps unique contract interactions per wallet.
* **Logic:** Counts distinct `to_address` interactions across DeFi, NFT, and Social protocols on Base.
* **Metric:** Feeds the "Based Score" multiplier for ecosystem diversity.

### 3. Network Contribution (`Gas_Analytics.sql`)
* **Purpose:** Calculates total ETH spent on gas by a specific user.
* **Logic:** Aggregates `gas_used * gas_price` for all successful transactions.
* **Metric:** Measures a user's literal "weight" in securing the network.

### 4. Integration with Dune Analytics
All queries are designed to be compatible with **Dune SQL (Trino)**. To run these, paste the code into a New Query on Dune and set the environment to `Base`.
