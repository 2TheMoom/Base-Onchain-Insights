# 🧮 Based Score Formula (v1.0)

This document outlines the mathematical weightings for the Social Engagement Analyzer's reputation score.

## The Formula
**Total Score (Max 100) = (A * 0.40) + (B * 0.30) + (C * 0.20) + (D * 0.10)**

### A. Consistency & Streak (40%)
*Measured by the longest consecutive active streak (days).*
* **200+ Days:** 40 pts
* **100-199 Days:** 30 pts
* **30-99 Days:** 20 pts
* **<30 Days:** 10 pts

### B. Protocol Diversity (30%)
*Unique smart contracts interacted with.*
* **10+ Protocols:** 30 pts
* **5-9 Protocols:** 20 pts
* **1-4 Protocols:** 10 pts

### C. Wallet Age (20%)
*Time since the first transaction on Base.*
* **1+ Year:** 20 pts
* **6-12 Months:** 15 pts
* **<6 Months:** 5 pts

### D. Gas Contribution (10%)
*Total ETH spent on transaction fees.*
* **>0.05 ETH:** 10 pts
* **0.01 - 0.05 ETH:** 5 pts
