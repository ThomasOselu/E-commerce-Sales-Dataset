-- ============================================================
-- 04_top_products.sql
-- Top 10 products by net revenue, with volume and pricing detail
-- ============================================================

SELECT 
    product_name,
    product_category,
    COUNT(*)                        AS times_ordered,
    SUM(units_sold)                 AS total_units,
    ROUND(SUM(gross_revenue), 2)    AS gross_revenue,
    ROUND(SUM(net_revenue), 2)      AS net_revenue,
    ROUND(AVG(unit_price), 2)       AS avg_unit_price,
    ROUND(AVG(discount_pct), 2)     AS avg_discount_pct
FROM (
    SELECT 
        product_name,
        product_category,
        units_sold,
        revenue AS gross_revenue,
        net_revenue,
        unit_price,
        discount_pct
    FROM sales
) sub
GROUP BY product_name, product_category
ORDER BY net_revenue DESC
LIMIT 10;
