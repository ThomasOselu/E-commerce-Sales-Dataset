-- ============================================================
-- 09_category_by_region.sql
-- Cross-tabulation: which categories sell best in which regions
-- ============================================================

-- Detailed breakdown
SELECT 
    region,
    product_category,
    COUNT(*)                    AS orders,
    SUM(units_sold)             AS total_units,
    ROUND(SUM(net_revenue), 2)  AS net_revenue
FROM sales
GROUP BY region, product_category
ORDER BY region, net_revenue DESC;

-- ── Pivot view (Electronics, Books, Clothing, Sports, Home & Living) ──
SELECT
    region,
    ROUND(SUM(CASE WHEN product_category = 'Electronics'   THEN net_revenue ELSE 0 END), 2) AS electronics,
    ROUND(SUM(CASE WHEN product_category = 'Books'         THEN net_revenue ELSE 0 END), 2) AS books,
    ROUND(SUM(CASE WHEN product_category = 'Clothing'      THEN net_revenue ELSE 0 END), 2) AS clothing,
    ROUND(SUM(CASE WHEN product_category = 'Sports'        THEN net_revenue ELSE 0 END), 2) AS sports,
    ROUND(SUM(CASE WHEN product_category = 'Home & Living' THEN net_revenue ELSE 0 END), 2) AS home_and_living,
    ROUND(SUM(net_revenue), 2)                                                               AS total
FROM sales
GROUP BY region
ORDER BY total DESC;
