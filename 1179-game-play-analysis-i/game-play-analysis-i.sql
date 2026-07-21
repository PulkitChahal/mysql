# Write your MySQL query statement below
-- SELECT
--     player_id,
--     event_date AS first_login
-- FROM (
--     SELECT
--         player_id,
--         event_date,
--         ROW_NUMBER() OVER (
--             PARTITION BY player_id
--             ORDER BY event_date
--         ) AS number
--     FROM Activity
-- ) AS ranked
-- WHERE number = 1;

SELECT 
    player_id,
    min(event_date) AS first_login
FROM Activity
GROUP BY player_id