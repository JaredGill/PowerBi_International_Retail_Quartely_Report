SELECT s.store_type, ROUND(SUM(o.product_quantity * p.sale_price)::numeric, 2) AS store_revenue
FROM orders o
JOIN dim_store s on s.store_code = o.store_code
JOIN dim_product p on p.product_code = o.product_code
WHERE s.country_code = 'DE'
AND EXTRACT(YEAR FROM o.order_date::date) = 2022
GROUP BY s.store_type
ORDER BY store_revenue DESC; 