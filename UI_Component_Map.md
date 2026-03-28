# 🗺️ UI Component Map: Social Engagement Analyzer

This document maps out the specific interface elements required for the Phase 3 frontend build.

### 1. Header & Connectivity
* **Connect Wallet Button:** Integrated via ConnectKit; must support Rabby, Coinbase Wallet, and MetaMask.
* **Network Status Indicator:** Displays a "Based" badge if the user is correctly on the Base network.

### 2. The "Based Profile" Card (Hero Section)
* **Reputation Score:** A large circular progress bar (0-100) displaying the calculated "Based Score."
* **Streak Counter 🔥:** A prominent flame icon showing the "Longest Active Streak" (using our SQL logic).
* **Rank Title:** Dynamic text (e.g., "Early Builder," "Based Legend") based on score tier.

### 3. Analytics Breakdown (Data Grid)
* **Consistency Chart:** A simple mini-graph showing active days over the last 6 months.
* **Protocol Diversity List:** Icons of the top 5 protocols the user interacts with (Uniswap, Aerodrome, etc.).
* **Gas Meter:** A display of total contribution to network security via gas fees.

### 4. Social Integration Layer
* **Share to Warpcast/X:** A one-click button to share the user's Based Score and Streak to Farcaster or Twitter.
* **Leaderboard Preview:** A snippet showing where the user ranks compared to other "Based" builders.
