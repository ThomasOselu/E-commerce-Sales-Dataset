-- ============================================================
-- 00_create_table.sql
-- Create the sales table schema for the e-commerce dataset
-- ============================================================

CREATE TABLE IF NOT EXISTS sales (
    order_id         TEXT PRIMARY KEY,
    customer_name    TEXT NOT NULL,
    region           TEXT NOT NULL,          -- North | South | East | West
    product_category TEXT NOT NULL,          -- Electronics | Books | Clothing | Sports | Home & Living
    product_name     TEXT NOT NULL,
    units_sold       INTEGER NOT NULL,
    unit_price       REAL NOT NULL,
    revenue          REAL NOT NULL,          -- units_sold * unit_price
    discount_pct     INTEGER NOT NULL,       -- 0 | 5 | 10 | 15 | 20
    net_revenue      REAL NOT NULL,          -- revenue * (1 - discount_pct / 100)
    order_date       TEXT NOT NULL,          -- ISO format: YYYY-MM-DD
    delivery_days    INTEGER NOT NULL
);
