USE mydb;

DROP FUNCTION IF EXISTS Divide;

DELIMITER //

CREATE FUNCTION Divide(num1 FLOAT, num2 FLOAT)
RETURNS FLOAT
DETERMINISTIC 
NO SQL
BEGIN
    DECLARE result FLOAT;
    SET result = num1 / num2;

    RETURN result;
END //

DELIMITER ;

SELECT od.id, od.quantity, Divide(od.quantity, 2.5)
FROM order_details as od;
