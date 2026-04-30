# 📖 Data Dictionary

**Table:** `sales`  
**Source:** E-Commerce Sales Dataset — Data Analytics Teaching Sample  
**Rows:** 100 orders (Jan–Dec 2024)

---

| Column | Type | Description | Example | Analytics Use |
|---|---|---|---|---|
| `order_id` | TEXT | Unique order identifier (ORD-1001 to ORD-1100) | ORD-1001 | Primary key, VLOOKUP |
| `customer_name` | TEXT | Full name of the customer | David Omondi | GROUP BY, customer segmentation |
| `region` | TEXT | Geographic region: North, South, East, West | East | Regional analysis, pivot |
| `product_category` | TEXT | Category: Electronics, Books, Clothing, Sports, Home & Living | Electronics | Category breakdown |
| `product_name` | TEXT | Specific product name (24 unique) | Laptop | Product ranking |
| `units_sold` | INTEGER | Number of units in this order (1–20) | 9 | Volume analysis |
| `unit_price` | REAL | Price per unit in USD ($15–$850) | 850.00 | Pricing analysis |
| `revenue` | REAL | Gross revenue = units_sold × unit_price | 7650.00 | Pre-discount revenue |
| `discount_pct` | INTEGER | Discount percentage: 0, 5, 10, 15, or 20 | 5 | Discount impact analysis |
| `net_revenue` | REAL | Revenue after discount = revenue × (1 − discount_pct/100) | 7267.50 | Key profitability metric |
| `order_date` | TEXT | ISO date of order: YYYY-MM-DD (2024-01-02 to 2024-12-21) | 2024-04-05 | Time series, seasonality |
| `delivery_days` | INTEGER | Days from order to delivery (2–10) | 10 | Logistics, SLA analysis |

---

## Derived Calculations

| Metric | Formula |
|---|---|
| Discount Amount | `revenue - net_revenue` |
| Avg Order Value | `SUM(net_revenue) / COUNT(*)` |
| Revenue Share % | `SUM(net_revenue) / (SELECT SUM(net_revenue) FROM sales) * 100` |
| Month | `SUBSTR(order_date, 1, 7)` |
| Standard Deviation (SQLite) | `SQRT(AVG(x*x) - AVG(x)*AVG(x))` |
