SELECT user.first_name, user.last_name, property.title FROM property
JOIN host ON host.host_id=property.host_id
JOIN user ON user.user_id=host.host_id;