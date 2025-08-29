SELECT p.property_id, p.title, COUNT(sp.property_id) AS save_count
FROM saved_properties sp
JOIN property p ON sp.property_id = p.property_id
GROUP BY p.property_id, p.title
ORDER BY save_count DESC
LIMIT 1;