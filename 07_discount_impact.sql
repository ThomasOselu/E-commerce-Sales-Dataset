-- ============================================================
-- 07_discount_impact.sql
-- How different discount tiers affect volume, revenue, and leakage
-- ============================================================

SELECT 
    discount_pct,
    COUNT(*)                                           AS orders,
    ROUND(AVG(units_sold), 2)                          AS avg_units_per_order,
    ROUND(SUM(revenue), 2)                             AS gross_revenue,
    ROUND(SUM(net_revenue), 2)                         AS net_revenue,
    ROUND(SUM(revenue) - SUM(net_revenue), 2)          AS revenue_lost_to_discount,
    ROUND(
        (SUM(revenue) - SUM(net_revenue)) * 100.0 / SUM(revenue),
        1
    )                                                  AS effective_discount_rate_pct
FROM sales
GROUP BY discount_pct
ORDER BY discount_pct;
