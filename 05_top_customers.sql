-- ============================================================
-- 05_top_customers.sql
-- Customer leaderboard: lifetime value, order frequency, behaviour
-- ============================================================

SELECT 
    customer_name,
    COUNT(*)                        AS total_orders,
    SUM(units_sold)                 AS total_units,
    ROUND(SUM(net_revenue), 2)      AS lifetime_net_revenue,
    ROUND(AVG(net_revenue), 2)      AS avg_order_value,
    ROUND(AVG(discount_pct), 2)     AS avg_discount_pct,
    ROUND(AVG(delivery_days), 1)    AS avg_delivery_days,
    COUNT(DISTINCT region)          AS regions_shopped,
    COUNT(DISTINCT product_category) AS categories_bought
FROM sales
GROUP BY customer_name
ORDER BY lifetime_net_revenue DESC;
