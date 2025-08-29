CREATE PROCEDURE test_cursor()
BEGIN
    DECLARE property_id INT;
    DECLARE done INT DEFAULT 0;
    DECLARE cur CURSOR FOR SELECT property_id FROM property;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
    
    OPEN cur;
    
    read_loop: LOOP
        FETCH cur INTO property_id;
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        -- Debug: Print property_id
        SELECT property_id;
    END LOOP;
    
    CLOSE cur;
END

