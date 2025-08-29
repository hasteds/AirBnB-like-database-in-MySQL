SELECT p.title AS propertyName, type, capacity
FROM property_rules pr
JOIN rules r ON r.rules_id = pr.rules_id
JOIN property p ON p.property_id = pr.property_id
WHERE r.title != "No Smoking"
GROUP BY p.title, p.type, p.capacity
ORDER BY p.title;