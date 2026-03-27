# Base Social Analyzer: Data Architecture

### 1. Data Collection
* **On-Chain:** SQL queries pulling from Base transaction logs (Dune/The Graph).
* **Off-Chain:** Farcaster API (Neynar) for social sentiment and profile mapping.

### 2. Processing Layer
* Calculate a "Builder Score" based on NFT holdings and transaction consistency.
* Match wallet addresses to social handles.

### 3. Output
* A dashboard displaying a user's "Base Social Impact" score.
