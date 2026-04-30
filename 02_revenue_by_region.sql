-- ============================================================
-- 02_revenue_by_region.sql
-- Regional performance: orders, revenue, discounts, market share
-- ============================================================

SELECT 
    region,
    COUNT(*)                                                          AS orders,
    SUM(units_sold)                                                   AS total_units,
    ROUND(SUM(revenue), 2)                                            AS gross_revenue,
    ROUND(SUM(net_revenue), 2)                                        AS net_revenue,
    ROUND(AVG(discount_pct), 2)                                       AS avg_discount_pct,
    ROUND(
        SUM(net_revenue) * 100.0 / (SELECT SUM(net_revenue) FROM sales),
        1
    )                                                                 AS revenue_share_pct
FROM sales
GROUP BY region
ORDER BY net_revenue DESC;
