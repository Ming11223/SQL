SELECT
    SUM(sub.order_qty)         AS total_quantity_sold,
    AVG(sub.order_qty)         AS avg_quantity_sold_per_order,
    SUM(sub.order_sales_amt)   AS total_sales_amount,
    AVG(sub.order_sales_amt)   AS avg_sales_amount_per_order
FROM (
    SELECT
        s.order_id,
        SUM(s.quantity)                       AS order_qty,
        SUM(s.quantity * i.price)            AS order_sales_amt
    FROM sales AS s
    JOIN inventories AS i
        ON s.product_id = i.product_id
    GROUP BY s.order_id
) AS sub;

--sub.order_qty[sub=i create a temporary table]
--as sub[names (aliases) that subquery so you can reference its columns (order_id, order_qty) in the outer query]