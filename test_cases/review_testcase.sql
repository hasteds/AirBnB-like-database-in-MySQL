SELECT SUM(rating)/COUNT(*) AS adverageRating
FROM review r
JOIN booking b ON b.booking_id=r.booking_id
JOIN property p ON p.property_id=b.property_id
WHERE title="Croatia apartment 5";