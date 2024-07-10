
-- Creating the view
CREATE VIEW store_sales_orders_summary_v2 AS(
    WITH cte AS (
        SELECT 
            ROUND(SUM(dp.sale_price * o.product_quantity)::numeric,2) AS total_sales,
            COUNT(o.order_date_uuid) AS count_orders,
            ds.store_type as store_type
        FROM orders AS o
        JOIN 
            dim_product AS dp
            ON dp.product_code = o.product_code
        JOIN 
            dim_store AS ds
            ON ds.store_code = o.store_code
        GROUP BY 
            ds.store_type
        ),
    grand_total_sales AS (
        SELECT   
            SUM(cte.total_sales) AS grand_total_sales
        FROM cte
        )
    SELECT 
        cte.store_type,
        cte.total_sales,
        cte.count_orders,
        ROUND((cte.total_sales / (SELECT grand_total_sales FROM grand_total_sales)) * 100::numeric,2) AS perc_sales
    FROM 
        cte
);

-- Checking the view
SELECT * FROM store_sales_orders_summary_v2;