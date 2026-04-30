-- ============================================================
-- 06_monthly_trends.sql
-- Month-over-month order volume, units sold, and revenue trend
-- ============================================================

SELECT 
    SUBSTR(order_date, 1, 7)                 AS month,
    COUNT(*)                                 AS orders,
    SUM(units_sold)                          AS units_sold,
    ROUND(SUM(net_revenue), 2)               AS net_revenue,
    ROUND(AVG(net_revenue), 2)               AS avg_order_value,
    -- Running total (cumulative revenue)
    ROUND(SUM(SUM(net_revenue)) OVER (
        ORDER BY SUBSTR(order_date, 1, 7)
    ), 2)                                    AS cumulative_revenue
FROM sales
GROUP BY SUBSTR(order_date, 1, 7)
ORDER BY month;
