CREATE DEFINER=`root`@`localhost` PROCEDURE `test`()
BEGIN
    DECLARE start_date DATE;
    DECLARE end_date DATE;
    DECLARE c_date DATE;
    DECLARE property_id INT;
    DECLARE done INT DEFAULT 0;
    DECLARE cur CURSOR FOR SELECT property_id FROM property;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Set the start and end date for the year 2025
    SET start_date = '2025-02-02';
    SET end_date = '2025-12-31';

    -- Open the cursor
    OPEN cur;

    -- Fetch the first property_id and debug it
    FETCH cur INTO property_id;
    
    -- Debug: Check the first property_id fetched
    SELECT property_id AS first_property_id;
    
    -- Ensure the fetch operation works for the first record
    IF property_id IS NULL THEN
        SELECT 'Error: NULL property_id detected after first fetch';
    ELSE
        SELECT 'First property_id fetched successfully: ', property_id;
    END IF;

    -- Close the cursor
    CLOSE cur;
END