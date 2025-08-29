SELECT pr.property_id
FROM property_rules pr
JOIN rules r ON r.rules_id = pr.rules_id
JOIN property p ON p.property_id= pr.property_id
WHERE r.title != "No Pets" AND r.title != "No Unauthorized Visitors"
GROUP BY pr.property_id;
