SELECT ROUND(SUM(o.product_quantity * p.sale_price)::numeric, 1) AS monthly_revenue, 
        EXTRACT(MONTH FROM o.order_date::date) AS month 
FROM orders o
JOIN dim_product p on p.product_code = o.product_code
WHERE EXTRACT(YEAR FROM o.order_date::date) = 2022
GROUP BY EXTRACT(MONTH FROM o.order_date::date)
ORDER BY monthly_revenue DESC; 