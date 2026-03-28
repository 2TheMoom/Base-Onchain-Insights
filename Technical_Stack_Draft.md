# 🛠️ Technical Stack Draft: Social Engagement Analyzer

This document outlines the proposed tools for building the front-end and connecting to the Base network.

### 1. Frontend Framework: Next.js (React)
* **Why:** Industry standard for fast, SEO-friendly web apps. 
* **UI Library:** Tailwind CSS for a clean, modern "Based" look.

### 2. Wallet Integration: RainbowKit / ConnectKit
* **Support:** Must support **Rabby Wallet** (community favorite) alongside Coinbase Wallet and MetaMask.
* **Why:** Rabby provides superior transaction simulation and security scanning, which aligns with our goal of "Safe On-chain Building."

### 3. Blockchain Interaction: Wagmi & Viem
* **Function:** Used to fetch the user's address to run our "Based Score" logic.

### 4. Data Source: Dune Analytics API / Subgraphs
* **Why:** To pull the "Active Streak" and "Protocol Diversity" data we defined in our SQL queries.

### 5. Hosting: Vercel
* **Why:** Seamless integration with GitHub for automatic deployments.
