-- WITH cte AS(
--     SELECT sales_id
--     FROM Orders o 
--     LEFT JOIN Company c
--     ON o.com_id = c.com_id
--     WHERE c.name LIKE 'RED'
-- )

-- SELECT name
-- FROM SalesPerson
-- WHERE sales_id NOT IN (SELECT DISTINCT(sales_id) FROM cte);

SELECT s.name
FROM Orders o
JOIN Company c
    ON o.com_id = c.com_id
   AND c.name = 'RED'
RIGHT JOIN SalesPerson s
    ON s.sales_id = o.sales_id
WHERE o.sales_id IS NULL;