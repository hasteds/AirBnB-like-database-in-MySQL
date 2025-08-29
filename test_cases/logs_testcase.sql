SELECT first_name, last_name, logs_id, action_type, description, timestamp
FROM user u
JOIN logs l ON l.action_performed_on = u.user_id
WHERE u.first_name = "Lana" AND u.last_name = "Vuković"
