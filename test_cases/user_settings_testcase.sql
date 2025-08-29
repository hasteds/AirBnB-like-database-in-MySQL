SELECT preffered_currency, COUNT(*) 
FROM user_settings us
WHERE us.preffered_language ="de"
GROUP BY preffered_currency;