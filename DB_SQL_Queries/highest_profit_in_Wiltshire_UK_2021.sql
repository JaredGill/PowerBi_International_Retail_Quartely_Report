WITH cte AS (SELECT  dp.sale_price, 
        dp.cost_price,
        dp.category, 
        ds.country_region,
        o.product_quantity
FROM orders o
JOIN dim_product dp on dp.product_code = o.product_code
JOIN dim_store ds on o.store_code = ds.store_code
WHERE dp.cost_price IS NOT NULL AND ds.country_region LIKE 'Wiltshire')
SELECT  category,
        SUM((sale_price - cte.cost_price) * product_quantity) AS profit
FROM cte
GROUP BY category
ORDER BY profit DESC