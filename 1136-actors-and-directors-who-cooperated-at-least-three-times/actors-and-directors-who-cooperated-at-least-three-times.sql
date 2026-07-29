SELECT 
    actor_id,
    director_id
FROM ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(*) >= 3;

-- SELECT actor_id, director_id 
-- FROM(
--         SELECT actor_id, director_id, 
--         COUNT(timestamp) as cooperated 
--         FROM ActorDirector 
--         GROUP BY actor_id, director_id
--     ) table1
-- WHERE cooperated >= 3;