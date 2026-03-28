# 📂 Frontend Folder Structure: Next.js + Tailwind

This document outlines the directory organization for the Phase 3 React build, ensuring a scalable and maintainable codebase.

### /src/app (App Router)
* **layout.tsx:** Global providers (ConnectKit, Wagmi, Theme).
* **page.tsx:** The main Dashboard entry point.
* **profile/[address]:** Dynamic route for viewing specific Based Scores.

### /src/components (UI Layer)
* **ConnectButton.tsx:** Custom-styled Rabby/MetaMask integration.
* **BasedScoreCard.tsx:** The main visual circle showing the 0-100 score.
* **StreakFlame.tsx:** The animated SVG component for the 240+ day streak.
* **StatsGrid.tsx:** The layout for displaying gas, diversity, and activity.

### /src/hooks (Logic Layer)
* **useBasedScore.ts:** Custom hook to fetch and calculate score from Dune API.
* **useStreakData.ts:** Hook to monitor current vs. longest active streaks.

### /src/lib (Utilities)
* **dune-client.ts:** Configuration for Dune Analytics API calls.
* **formatters.ts:** Helpers for shortening wallet addresses and formatting ETH gas values.

### /public/assets (Visuals)
* **badges/:** Folder containing SVG icons for "Genesis," "Habit," and "Infinity Flame."
* **brand/:** Logos and "Powered by Base" assets.
