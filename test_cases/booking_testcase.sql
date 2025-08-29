SELECT booking_id, first_name, last_name, phone, title AS porpertyName, start_date, end_date  
FROM booking b
JOIN property p ON p.property_id = b.property_id
JOIN guest g ON b.guest_id = g.guest_id
JOIN user u ON g.guest_id = u.user_id
WHERE u.first_name = 'Marija' 
AND u.last_name = 'Knežević'
AND b.start_date BETWEEN '2024-01-01' AND '2025-03-01'
ORDER BY start_date ASC;