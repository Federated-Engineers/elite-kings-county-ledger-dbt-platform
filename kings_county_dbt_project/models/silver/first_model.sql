SELECT
    customer_id,
    full_name
FROM prod_db.bronze."customers"
ORDER BY customer_id
LIMIT 10;
