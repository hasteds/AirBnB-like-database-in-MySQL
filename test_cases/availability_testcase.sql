SELECT title,price,note,date
FROM availability a
JOIN property p ON p.property_id=a.property_id
WHERE p.title="Greece apartment 7"
AND a.date BETWEEN "2025-08-01" AND "2025-08-10"
AND a.is_available=1;