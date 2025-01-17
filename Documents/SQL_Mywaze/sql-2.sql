SELECT
    c.customer_name,
    o.order_date,
    o.total_amount,
    AVG(o.total_amount) OVER (
        PARTITION BY c.customer_id
    ) AS avg_total_amount_per_customer
FROM customers AS c
JOIN orders AS o
    ON c.customer_id = o.customer_id
WHERE c.city = 'New York';




