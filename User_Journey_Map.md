# 🗺️ User Journey Map: Social Engagement Analyzer

This document outlines the end-to-end experience for a user interacting with the Based Score dashboard.

### 1. The Landing (First Impression)
* **Action:** User lands on the homepage.
* **Experience:** User sees a clean, "Base Blue" interface with a clear value proposition: "Check your Based Reputation."
* **Visual:** A preview of the "Infinity Flame" badge to spark curiosity.

### 2. The Connection (Rabby-First)
* **Action:** User clicks "Connect Wallet."
* **Experience:** **ConnectKit** modal pops up. The user selects **Rabby Wallet** (or Coinbase/MetaMask). 
* **Validation:** The app automatically checks if the user is on the **Base Mainnet** and prompts a switch if necessary.

### 3. The Analysis (Real-time Calculation)
* **Action:** The app triggers a call to the **Dune Analytics API** using the user's wallet address.
* **Experience:** A "Calculating your Basedness..." loading state appears using the **JetBrains Mono** font for a technical feel.
* **Logic:** The system runs the `Based_Score_Formula_v1` against the user's on-chain history.

### 4. The Reveal (Personal Dashboard)
* **Action:** The "Based Score" and "Streak Counter" are displayed.
* **Experience:** User sees their **240+ Day Flame** (if applicable) and earned badges.
* **Engagement:** User can toggle between different metrics (Gas, Diversity, Consistency).

### 5. The Viral Loop (Social Sharing)
* **Action:** User clicks the "Share to Warpcast" button.
* **Experience:** A pre-generated image of their score is created for them to post, driving new users back to the app.
* 
