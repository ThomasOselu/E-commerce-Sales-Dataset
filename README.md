# 🛒 E-Commerce Sales — SQL Analysis Repository

A complete SQL analysis of an e-commerce sales dataset (100 orders, Jan–Dec 2024) using SQLite. The repo covers everything from data loading to business insights across revenue, customers, products, regions, and delivery performance.

---

## 📁 Repository Structure

```
ecommerce-sql-analysis/
├── README.md                    ← You are here
├── setup.py                     ← Loads CSV into SQLite and runs all queries
├── data/
│   ├── ecommerce_sales.csv      ← Raw dataset (100 rows)
│   └── ecommerce.db             ← SQLite database (auto-generated)
├── sql/
│   ├── 00_create_table.sql      ← Table schema
│   ├── 01_total_summary.sql     ← Business-wide KPIs
│   ├── 02_revenue_by_region.sql ← Regional performance
│   ├── 03_revenue_by_category.sql ← Category breakdown
│   ├── 04_top_products.sql      ← Best-selling products
│   ├── 05_top_customers.sql     ← Customer leaderboard
│   ├── 06_monthly_trends.sql    ← Month-by-month trends
│   ├── 07_discount_impact.sql   ← How discounts affect revenue
│   ├── 08_delivery_performance.sql ← Delivery speed by region
│   ├── 09_category_by_region.sql ← Cross-tabulation heatmap
│   └── 10_high_value_orders.sql ← Outlier / VIP orders
├── results/
│   └── analysis_report.md       ← Full findings & insights
└── docs/
    └── data_dictionary.md       ← Column descriptions
```

---

## 📊 Dataset Overview

| Field | Description |
|---|---|
| `order_id` | Unique order identifier (ORD-1001 … ORD-1100) |
| `customer_name` | 15 unique customers |
| `region` | North, South, East, West |
| `product_category` | Electronics, Books, Clothing, Sports, Home & Living |
| `product_name` | 24 unique products |
| `units_sold` | 1–20 units per order |
| `unit_price` | Price in USD |
| `revenue` | units_sold × unit_price |
| `discount_pct` | 0%, 5%, 10%, 15%, or 20% |
| `net_revenue` | revenue × (1 − discount_pct/100) |
| `order_date` | 2024-01-02 to 2024-12-21 |
| `delivery_days` | 2–10 days |

---

## 🚀 Quick Start

### Prerequisites
- Python 3.8+
- `pandas` and `openpyxl` libraries

```bash
pip install pandas openpyxl
```

### Run the full analysis

```bash
python setup.py
```

This will:
1. Load `data/ecommerce_sales.csv` into a local SQLite database
2. Execute all 10 SQL analyses
3. Print results to the terminal

### Query the database manually

```bash
sqlite3 data/ecommerce.db
```

Then run any `.sql` file:

```sql
.read sql/02_revenue_by_region.sql
```

---

## 🔑 Key Findings (Summary)

| KPI | Value |
|---|---|
| Total Orders | 100 |
| Unique Customers | 15 |
| Gross Revenue | $124,021 |
| Net Revenue | $112,780 |
| Avg Discount | 9.85% |
| Avg Delivery Days | 6.35 |

- **North** leads in revenue (36.4% share), **South** lags (8.3%)
- **Electronics** alone contributes 58% of net revenue
- **Laptop** is the top product ($31,535 net revenue)
- **David Omondi** is the top customer ($25,753)
- **20% discount tier** loses $4,251 in revenue — the highest discount leakage
- **East region** has the fastest deliveries (avg 5.74 days)

See `results/analysis_report.md` for the full breakdown.
