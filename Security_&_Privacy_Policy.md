# 🛡️ Security & Privacy Policy: Social Engagement Analyzer

Trust and user safety are the foundation of this project. This document outlines our commitment to a "Security-First" architecture.

### 1. Read-Only Access (No Private Keys)
* **Principle:** The Social Engagement Analyzer **NEVER** asks for, stores, or transmits your private keys or seed phrases.
* **Function:** We only request "View Only" access to your public wallet address to pull on-chain data via Dune Analytics.

### 2. Transaction Safety
* **No Spend Permissions:** Our app does not trigger "Approve" or "Transfer" transactions.
* **Rabby Integration:** We leverage **Rabby Wallet’s** native simulation technology so users can verify that no state-changing actions are being requested.

### 3. Data Privacy
* **On-Chain Transparency:** All data analyzed is already public on the Base blockchain.
* **Zero Tracking:** We do not use third-party tracking cookies or store personal identity data (PII) on our servers. The "Based Score" is calculated in real-time and remains tied to your wallet.

### 4. Smart Contract Interaction
* **Standard Protocols:** We only interact with official Base RPC endpoints and established data providers (Dune Analytics/Subgraphs).
* **Open Source:** This repository remains open-source so the community can audit our logic at any time.
