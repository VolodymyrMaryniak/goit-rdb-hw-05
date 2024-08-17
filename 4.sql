USE mydb;

WITH OrderDetailsWithHighQuantity AS (
    SELECT * 
    FROM order_details
    WHERE quantity > 10
)
SELECT od.order_id, AVG(od.quantity)
FROM OrderDetailsWithHighQuantity as od
GROUP BY od.order_id;
