-- Task: Which German store type had the highest revenue for 2022?

SELECT 
    ds.store_type, 
    ROUND(SUM(o.product_quantity * dp.sale_price)::numeric, 2) AS store_revenue
FROM 
    orders AS o
JOIN 
    dim_store AS ds 
    ON ds.store_code = o.store_code
JOIN 
    dim_product AS dp 
    ON dp.product_code = o.product_code
WHERE 
    ds.country_code = 'DE'
    AND EXTRACT(YEAR FROM o.order_date::date) = 2022
GROUP BY 
    ds.store_type
ORDER BY 
    store_revenue DESC; 