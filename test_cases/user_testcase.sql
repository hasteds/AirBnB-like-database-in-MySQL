SELECT u.user_id, u.first_name, u.last_name, COUNT(r.user_id)
FROM airbnbclone.user u
LEFT JOIN airbnbclone.user r ON u.user_id = r.refered_by
GROUP BY u.user_id
ORDER BY COUNT(r.user_id) DESC;