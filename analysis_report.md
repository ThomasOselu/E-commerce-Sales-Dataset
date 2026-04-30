# 📊 E-Commerce Sales Analysis Report
**Dataset:** 100 orders · Jan–Dec 2024 · 15 customers · 24 products · 4 regions

---

## 1. Business-Wide KPIs

| Metric | Value |
|---|---|
| Total Orders | 100 |
| Unique Customers | 15 |
| Product Categories | 5 |
| Unique Products | 24 |
| Total Units Sold | 973 |
| Gross Revenue | $124,021 |
| Net Revenue | $112,780 |
| Discount Given | $11,240 |
| Avg Discount % | 9.85% |
| Avg Delivery Days | 6.35 |

**Takeaway:** The business collected $112,780 net across 100 orders. Discounting eroded about 9% of gross revenue — a meaningful number worth monitoring.

---

## 2. Revenue by Region

| Region | Orders | Net Revenue | Share |
|---|---|---|---|
| North | 25 | $41,006 | 36.4% |
| East | 27 | $35,715 | 31.7% |
| West | 27 | $26,741 | 23.7% |
| South | 21 | $9,319 | 8.3% |

**Insight:** North dominates despite having fewer orders than East and West — driven by higher average order values (electronics heavy). South significantly underperforms; only 8.3% of revenue from 21% of orders. South also has the highest avg discount (12.4%), suggesting aggressive promotions are not recovering the gap.

---

## 3. Revenue by Category

| Category | Orders | Net Revenue | Avg Unit Price | Avg Discount |
|---|---|---|---|---|
| Electronics | 23 | $65,828 | $409.57 | 7.83% |
| Home & Living | 12 | $14,318 | $148.33 | 15.42% |
| Sports | 20 | $12,948 | $65.75 | 8.00% |
| Clothing | 21 | $11,773 | $68.81 | 9.05% |
| Books | 24 | $7,915 | $31.04 | 11.25% |

**Insight:** Electronics generates 58% of net revenue with only 23% of orders — driven entirely by high unit prices. Home & Living has the highest discount rate (15.4%) yet still captures 12.7% of revenue, suggesting premium products. Books generate the most orders (24) but the least revenue — high volume, low margin.

---

## 4. Top 10 Products by Net Revenue

| Rank | Product | Category | Net Revenue | Units |
|---|---|---|---|---|
| 1 | Laptop | Electronics | $31,535 | 40 |
| 2 | Smartwatch | Electronics | $16,646 | 63 |
| 3 | Sofa | Home & Living | $11,700 | 31 |
| 4 | Smartphone | Electronics | $7,316 | 12 |
| 5 | Dumbbell Set | Sports | $6,270 | 59 |
| 6 | Tablet | Electronics | $5,344 | 15 |
| 7 | Headphones | Electronics | $4,988 | 38 |
| 8 | Jacket | Clothing | $4,604 | 48 |
| 9 | Jeans | Clothing | $4,047 | 72 |
| 10 | Statistics Guide | Books | $2,287 | 86 |

**Insight:** Laptops alone make up 28% of total net revenue — the single most critical product. Smartwatch moved the most electronics units (63). Statistics Guide had the most units of any individual product (86) but lowest net revenue of the top-10 — a true high-volume, low-margin item.

---

## 5. Top Customers

| Rank | Customer | Orders | Net Revenue | Avg Order Value |
|---|---|---|---|---|
| 1 | David Omondi | 12 | $25,753 | $2,146 |
| 2 | Bob Mutua | 6 | $19,278 | $3,213 |
| 3 | Liam Ndungu | 8 | $12,738 | $1,592 |
| 4 | Henry Mwangi | 6 | $10,835 | $1,806 |
| 5 | Olivia Chebet | 7 | $6,481 | $926 |

**Insight:** David Omondi is the top customer by revenue (12 orders, $25,753). Bob Mutua has only 6 orders but a higher average order value ($3,213) — driven by large laptop purchases. The top 4 customers account for ~61% of total net revenue — significant customer concentration risk.

---

## 6. Monthly Revenue Trends

| Month | Orders | Net Revenue | Cumulative |
|---|---|---|---|
| Jan 2024 | 9 | $7,233 | $7,233 |
| Feb 2024 | 8 | $3,523 | $10,756 |
| Mar 2024 | 10 | $9,771 | $20,527 |
| Apr 2024 | 9 | $18,669 | $39,196 |
| May 2024 | 10 | $5,173 | $44,369 |
| Jun 2024 | 5 | $5,248 | $49,617 |
| Jul 2024 | 9 | $17,595 | $67,212 |
| Aug 2024 | 12 | $6,760 | $73,972 |
| Sep 2024 | 5 | $2,999 | $76,971 |
| Oct 2024 | 12 | $13,567 | $90,538 |
| Nov 2024 | 3 | $15,375 | $105,913 |
| Dec 2024 | 8 | $6,868 | $112,781 |

**Insight:** Revenue is lumpy — April ($18.7K), July ($17.6K), and November ($15.4K) are peak months. September is the weakest ($3K from only 5 orders). November's high revenue from just 3 orders suggests very high-value transactions. No strong seasonal pattern — spikes appear driven by individual large orders rather than seasonal demand.

---

## 7. Discount Impact Analysis

| Discount % | Orders | Avg Units | Net Revenue | Revenue Lost |
|---|---|---|---|---|
| 0% | 20 | 8.35 | $23,070 | $0 |
| 5% | 21 | 9.86 | $29,583 | $1,557 |
| 10% | 21 | 9.38 | $33,316 | $3,702 |
| 15% | 18 | 10.39 | $9,806 | $1,730 |
| 20% | 20 | 10.75 | $17,006 | $4,251 |

**Insight:** Discounts do drive slightly higher average units per order (8.35 at 0% vs 10.75 at 20%), but the 20% tier costs $4,251 in lost revenue — the highest leakage. The 10% tier generates the most net revenue ($33.3K), suggesting it strikes the best balance. Consider capping discounts at 10% and re-evaluating 15–20% tier ROI.

---

## 8. Delivery Performance by Region

| Region | Avg Days | Express (≤4d) | Standard (5-7d) | Slow (8+d) |
|---|---|---|---|---|
| East | 5.74 | 12 | 8 | 8 |
| West | 6.00 | 10 | 10 | 7 |
| North | 6.88 | 8 | 5 | 12 |
| South | 6.95 | 6 | 6 | 9 |

**Insight:** East has the fastest average delivery (5.74 days) and the most express deliveries (12). North and South both average nearly 7 days and have more slow deliveries (8+) than express ones — a logistics gap worth investigating given North's high revenue contribution.

---

## 9. Category × Region Cross-Tabulation (Pivot)

| Region | Electronics | Books | Clothing | Sports | Home & Living | Total |
|---|---|---|---|---|---|---|
| North | $30,889 | $2,460 | $1,856 | $2,039 | $3,762 | $41,006 |
| East | $19,008 | $2,445 | $2,284 | $3,019 | $8,960 | $35,715 |
| West | $13,816 | $1,227 | $4,949 | $6,749 | $0 | $26,741 |
| South | $2,115 | $1,783 | $2,684 | $1,142 | $1,596 | $9,319 |

**Insight:** West has zero Home & Living sales — an untapped opportunity. West leads in Sports ($6,749), suggesting an active/fitness-oriented demographic. North and East are electronics-driven. Clothing performs best in West and South proportionally.

---

## 10. High-Value Orders (Outliers, >1.5 SD above mean)

| Order | Customer | Product | Net Revenue |
|---|---|---|---|
| ORD-1016 | Bob Mutua | Laptop (18 units) | $13,770 |
| ORD-1088 | David Omondi | Laptop (10 units) | $8,075 |
| ORD-1001 | Liam Ndungu | Laptop (9 units) | $7,268 |
| ORD-1023 | David Omondi | Sofa (19 units) | $6,840 |
| ORD-1076 | David Omondi | Smartphone (7 units) | $4,340 |

**Insight:** All 5 outlier orders are from just 3 customers (Bob Mutua, David Omondi, Liam Ndungu). Laptops appear in 3 of 5 high-value orders. These customers represent a VIP segment worth prioritizing for retention and loyalty programs.

---

## Key Recommendations

1. **Protect Electronics revenue** — 58% of net revenue from a single category is a concentration risk. Diversify product mix or deepen the category.
2. **Invest in North logistics** — highest revenue region but worst delivery performance (6.88 avg days, 12 slow deliveries).
3. **Cap discounts at 10%** — the 10% tier generates the most net revenue; 15–20% tiers show diminishing returns.
4. **Grow South region** — lowest revenue share (8.3%) despite running high discounts. The strategy isn't working; consider product or channel changes.
5. **Launch Home & Living in West** — zero sales in the highest Sports/Clothing performing region is a gap.
6. **VIP retention for top 4 customers** — David Omondi, Bob Mutua, Liam Ndungu, Henry Mwangi represent ~61% of revenue.
