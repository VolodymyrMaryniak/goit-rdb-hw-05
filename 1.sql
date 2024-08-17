USE mydb;

SELECT od.*, (SELECT customer_id FROM orders as o WHERE o.id = od.order_id) AS customer_id
FROM order_details as od;
