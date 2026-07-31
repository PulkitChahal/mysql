-- SELECT
--     user_id,
--     MAX(time_stamp) AS last_stamp
-- FROM Logins
-- GROUP BY user_id, time_stamp
-- HAVING YEAR(time_stamp) = 2020
-- ;

SELECT
    user_id,
    MAX(time_stamp) AS last_stamp
FROM (
    SELECT * 
    FROM Logins
    WHERE YEAR(time_stamp) = 2020
) AS l
GROUP BY user_id;