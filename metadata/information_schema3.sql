SELECT 
    TABLE_NAME AS "Table",
    TABLE_ROWS AS "Number of Entries",
    ROUND((DATA_LENGTH + INDEX_LENGTH) / 1024 / 1024, 2) AS "Total Size (MB)"
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = 'airbnbclone'
ORDER BY "Total Size (MB)" DESC;