-- ============================================================
-- 01_total_summary.sql
-- Business-wide KPIs — the single-row executive summary
-- ============================================================

SELECT 
    COUNT(*)                              AS total_orders,
    COUNT(DISTINCT customer_name)         AS unique_customers,
    COUNT(DISTINCT product_category)      AS categories,
    COUNT(DISTINCT product_name)          AS unique_products,
    SUM(units_sold)                       AS total_units_sold,
    ROUND(SUM(revenue), 2)                AS gross_revenue,
    ROUND(SUM(net_revenue), 2)            AS net_revenue,
    ROUND(SUM(revenue) - SUM(net_revenue), 2) AS total_discount_given,
    ROUND(AVG(discount_pct), 2)           AS avg_discount_pct,
    ROUND(AVG(delivery_days), 2)          AS avg_delivery_days,
    MIN(order_date)                       AS first_order_date,
    MAX(order_date)                       AS last_order_date
FROM sales;
