SELECT name, COUNT(name)
FROM airbnbclone.payment_method
GROUP BY name
ORDER BY COUNT(name) DESC;