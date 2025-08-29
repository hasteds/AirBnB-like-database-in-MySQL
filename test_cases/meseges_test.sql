SELECT 
    CASE 
        WHEN a.email LIKE '%@gmail.com' THEN 'gmail.com'
        WHEN a.email LIKE '%@yahoo.com' THEN 'yahoo.com'
        WHEN a.email LIKE '%@outlook.com' THEN 'outlook.com'
        ELSE 'other'
    END AS email_provider,
    COUNT(m.message_id)
FROM `messages` m
JOIN `user` u ON m.sender_id = u.user_id
JOIN `authentication` a ON u.authentication_id = a.authentication_id
WHERE a.email LIKE '%@gmail.com'
   OR a.email LIKE '%@yahoo.com'
   OR a.email LIKE '%@outlook.com'
GROUP BY email_provider
ORDER BY  COUNT(m.message_id) DESC;