-- Task: Which month in 2022 has had the highest revenue?

SELECT 
        ROUND(SUM(o.product_quantity * dp.sale_price)::numeric, 1) AS monthly_revenue, 
        EXTRACT(MONTH FROM o.order_date::date) AS month 
FROM 
        orders AS o
JOIN 
        dim_product AS dp 
        ON dp.product_code = o.product_code
WHERE 
        EXTRACT(YEAR FROM o.order_date::date) = 2022
GROUP BY 
        EXTRACT(MONTH FROM o.order_date::date)
ORDER BY 
        monthly_revenue DESC; 