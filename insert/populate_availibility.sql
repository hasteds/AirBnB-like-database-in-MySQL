CREATE DEFINER=`root`@`localhost` PROCEDURE `populate_availability`()
BEGIN
    DECLARE c_date DATE;
    DECLARE start_date DATE;
    DECLARE end_date DATE;
    DECLARE property_id INT DEFAULT 1; 

    SET start_date = CURDATE();
    SET end_date = DATE_ADD(start_date, INTERVAL 1 YEAR);

    WHILE property_id <= 50 DO
        SET c_date = start_date;
        WHILE c_date <= end_date DO
            INSERT INTO availability (property_id, date, price, is_available, note, time_created)
            VALUES (property_id, c_date, 100.00, 1, 'Available', NOW())
            ON DUPLICATE KEY UPDATE date = date;
            
            SET c_date = DATE_ADD(c_date, INTERVAL 1 DAY);
        END WHILE;
        SET property_id = property_id + 1;
    END WHILE;
END