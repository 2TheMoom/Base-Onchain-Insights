# 🌐 API Endpoint Documentation: Data Integration Layer

This document lists the external data sources and internal API routes used to calculate the "Based Score."

### 1. External Data Providers
* **Dune Analytics API:** * **Endpoint:** `https://api.dune.com/api/v1/query/{{query_id}}/results`
  * **Purpose:** Fetches the raw SQL output for "Active Streaks" and "Protocol Diversity."
* **Base Mainnet RPC:** * **Endpoint:** `https://mainnet.base.org` (via Viem/Wagmi)
  * **Purpose:** Real-time wallet balance, ENS resolution, and transaction simulation for Rabby users.

### 2. Internal Next.js API Routes (Serverless)
* **GET `/api/score/[address]`**
  * **Input:** User wallet address.
  * **Logic:** Combines Dune data + on-chain balance to return a 0-100 score.
* **GET `/api/badges/[address]`**
  * **Input:** User wallet address.
  * **Logic:** Returns an array of earned SVG badges (e.g., 240+ Day Flame).

### 3. Rate Limiting & Security
* **Caching:** Results are cached for 24 hours to minimize API costs and improve load times.
* **Environment Variables:** All API keys are stored in `.env.local` and are never committed to the public repo.
