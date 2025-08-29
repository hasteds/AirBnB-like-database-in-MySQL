SELECT 
    (COUNT(host.host_id) * 100 / COUNT(user.user_id)) AS percentageOfHosts
FROM airbnbclone.user
LEFT JOIN airbnbclone.host ON user.user_id = host.host_id;