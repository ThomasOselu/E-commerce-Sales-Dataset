-- ============================================================
-- 10_high_value_orders.sql
-- Identify outlier / VIP orders above 1.5 standard deviations
-- from the mean net_revenue (using SQLite-compatible std dev)
-- ============================================================

WITH stats AS (
    SELECT
        AVG(net_revenue) AS mean_nr,
        SQRT(
            AVG(net_revenue * net_revenue) - AVG(net_revenue) * AVG(net_revenue)
        )                AS stddev_nr
    FROM sales
)
SELECT 
    s.order_id,
    s.customer_name,
    s.region,
    s.product_category,
    s.product_name,
    s.units_sold,
    ROUND(s.unit_price, 2)    AS unit_price,
    ROUND(s.revenue, 2)       AS gross_revenue,
    s.discount_pct,
    ROUND(s.net_revenue, 2)   AS net_revenue,
    s.order_date,
    ROUND(st.mean_nr, 2)      AS dataset_mean,
    ROUND(st.stddev_nr, 2)    AS dataset_stddev
FROM sales s
CROSS JOIN stats st
WHERE s.net_revenue > (st.mean_nr + 1.5 * st.stddev_nr)
ORDER BY s.net_revenue DESC;
