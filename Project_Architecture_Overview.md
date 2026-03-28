# 🏗️ Social Engagement Analyzer: System Architecture

This document provides a 30,000-foot view of how the "Based Score" engine connects from the blockchain to the user's screen.

## 1. Data Acquisition (The Source)
* **Chain:** Base Mainnet.
* **Extraction:** Utilizing **Dune Analytics** and custom SQL queries to pull historical transaction data.
* **Key Metrics:** Longest active streak, protocol interaction count, and total gas contribution.

## 2. Processing Engine (The Logic)
* **Calculations:** The `Based_Score_Formula_v1.md` logic is applied to the raw data.
* **Verification:** Streaks are validated using the `Base_User_Streak_Calculator.sql` logic to ensure authenticity and prevent sybil manipulation.

## 3. Frontend Integration (The Interface)
* **Framework:** Next.js 16 (React) for a high-performance, server-side rendered experience.
* **Connectivity:** **ConnectKit** provides a seamless "Connect Wallet" experience with native support for **Rabby Wallet**, Coinbase Wallet, and MetaMask.
* **State Management:** Wagmi/Viem handles real-time account data and network validation.

## 4. Deployment & Scaling (The Infrastructure)
* **Hosting:** Vercel (CI/CD integrated with GitHub).
* **Security:** Pre-sign transaction simulation via Rabby Wallet compatibility to ensure user safety during app interaction.
