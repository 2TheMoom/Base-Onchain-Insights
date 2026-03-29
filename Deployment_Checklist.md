# 🚀 Deployment Checklist: Pre-Launch Quality Control

This document ensures the Social Engagement Analyzer is production-ready before the final push to the Base Mainnet.

### 1. Environment & API Security
* [ ] **API Keys:** Ensure `DUNE_API_KEY` and `BASE_RPC_URL` are strictly in `.env.local` (NOT in public code).
* [ ] **Rate Limiting:** Confirm the Vercel/Next.js function won't timeout during heavy Dune API calls.

### 2. Wallet & Chain Validation
* [ ] **Chain ID Check:** Verify the app correctly identifies "Base Mainnet" (8453) and rejects other L2s for this version.
* [ ] **Rabby Simulation:** Test a "Mock Score" to ensure Rabby doesn't flag any suspicious contract calls.

### 3. UI/UX Consistency
* [ ] **Mobile Scaling:** Ensure the "Based Score" circle doesn't clip on iPhone/Android screens.
* [ ] **Dark Mode:** Verify the "Base Purple" (#6D28D9) remains readable against dark backgrounds.
* [ ] **Loading States:** Confirm the Kitsune-masked animation plays while data is fetching.

### 4. Data Integrity
* [ ] **SQL Validation:** Run a final manual check on `User_Retention.sql` to ensure 240+ day streaks are calculating.
* [ ] **Fallback Logic:** If Dune API is down, does the app show a "Data Cooling Down" message instead of crashing?

### 5. Social Sharing
* [ ] **OpenGraph (OG) Tags:** Ensure that when a user shares their score on Warpcast, the preview image appears correctly.
