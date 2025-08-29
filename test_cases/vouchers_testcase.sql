SELECT * 
FROM vouchers
WHERE code = "NEWYEAR50";

UPDATE vouchers
SET usage_times = usage_times - 1
WHERE vouchers_id = 18;

SELECT * 
FROM vouchers
WHERE code = "NEWYEAR50";