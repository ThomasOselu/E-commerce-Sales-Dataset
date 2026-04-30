-- ============================================================
-- 08_delivery_performance.sql
-- Delivery speed analysis by region: fast vs slow deliveries
-- ============================================================

SELECT 
    region,
    COUNT(*)                                                           AS total_orders,
    ROUND(AVG(delivery_days), 2)                                       AS avg_delivery_days,
    MIN(delivery_days)                                                 AS fastest_days,
    MAX(delivery_days)                                                 AS slowest_days,
    SUM(CASE WHEN delivery_days <= 4 THEN 1 ELSE 0 END)               AS express_deliveries,   -- <= 4 days
    SUM(CASE WHEN delivery_days BETWEEN 5 AND 7 THEN 1 ELSE 0 END)    AS standard_deliveries,  -- 5-7 days
    SUM(CASE WHEN delivery_days > 7 THEN 1 ELSE 0 END)                AS slow_deliveries       -- 8+ days
FROM sales
GROUP BY region
ORDER BY avg_delivery_days ASC;
