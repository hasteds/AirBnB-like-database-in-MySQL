SELECT first_name, last_name, phone, email, payment_id, total_price, name AS paymentMethod
FROM payment p
JOIN booking b ON b.booking_id = p.booking_id
JOIN guest g ON g.guest_id = b.guest_id
JOIN user u ON u.user_id = g.guest_id
JOIN authentication a ON u.authentication_id = a.authentication_id
JOIN payment_method pm ON pm.payment_method_id = p.payment_method_id
WHERE status = "Failed";