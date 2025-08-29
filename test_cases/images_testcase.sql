SELECT image_URL, is_cover, title, first_name, last_name FROM images i
JOIN property p ON p.property_id=i.property_id
JOIN host h ON p.host_id=h.host_id
JOIN user u ON u.user_id=h.host_id
WHERE is_cover = true;