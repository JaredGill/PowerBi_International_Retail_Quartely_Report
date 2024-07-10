-- Task: Which product category generated the most profit for the "Wiltshire, UK" region in 2021?

WITH cte AS (
        SELECT  
                dp.sale_price, 
                dp.cost_price,
                dp.category, 
                ds.country_region,
                o.product_quantity
        FROM 
                orders AS o
        JOIN 
                dim_product AS dp 
                ON dp.product_code = o.product_code
        JOIN 
                dim_store AS ds 
                ON o.store_code = ds.store_code
        WHERE 
                dp.cost_price IS NOT NULL 
                AND ds.country_region LIKE 'Wiltshire'
                AND EXTRACT(YEAR FROM o.order_date::date) = 2021
)
SELECT  
        category,
        SUM((sale_price - cte.cost_price) * product_quantity) AS profit
FROM 
        cte
GROUP BY 
        category
ORDER BY 
        profit DESC;