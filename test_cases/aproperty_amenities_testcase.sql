SELECT COUNT(pa.property_id) * 100 / (SELECT COUNT(*) FROM property) AS parkingPercentage
FROM property_amenities pa
JOIN amenities a ON a.amenities_id=pa.amenities_id
WHERE name = "Parking";