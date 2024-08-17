USE mydb;

SELECT od.*
FROM order_details as od
WHERE (SELECT o.shipper_id FROM orders as o WHERE o.id = od.order_id) = 3;

