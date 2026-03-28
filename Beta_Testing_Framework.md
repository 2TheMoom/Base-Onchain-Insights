# 🧪 Beta Testing Framework: Social Engagement Analyzer

This document outlines the testing criteria for our Phase 4 Beta rollout to ensure cross-wallet compatibility and data accuracy.

### 1. Wallet Connectivity (The "Rabby Test")
* **Goal:** Verify that ConnectKit correctly identifies the wallet provider.
* **Test Case:** Connect via **Rabby Wallet** on Chrome/Brave.
* **Success Metric:** App recognizes the address and triggers the "Based Score" calculation without manual RPC switching.

### 2. Logic & Streak Accuracy
* **Goal:** Ensure the SQL-driven data matches the user's actual history.
* **Test Case:** Compare the "Infinity Flame" (240+ days) against the user's Base Scan history.
* **Success Metric:** Streak count is accurate within a 24-hour margin of error.

### 3. Responsive UI (Mobile vs. Desktop)
* **Goal:** Confirm the "Based Profile Card" looks great on all screens.
* **Test Case:** Open the dashboard on a mobile browser using the Coinbase Wallet in-app browser.
* **Success Metric:** No "text-overflow" on long wallet addresses or large streak numbers.

### 4. Social Sharing Loop
* **Goal:** Test the "Share to Warpcast" functionality.
* **Test Case:** Generate a "Based Score" share-card and post to a Farcaster client.
* **Success Metric:** Link correctly redirects back to the analyzer with the user's specific score.
