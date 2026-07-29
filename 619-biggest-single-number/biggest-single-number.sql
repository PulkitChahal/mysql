-- SELECT MAX(num) AS num
-- FROM (
--     SELECT num
--     FROM MyNumbers
--     GROUP BY num
--     HAVING COUNT(*) = 1
-- ) AS t;

SELECT 
    CASE WHEN COUNT(num) = 1 THEN num ELSE NULL END AS num
FROM MyNumbers
GROUP BY num
ORDER BY num DESC
LIMIT 1;