-- SELECT 
--     p.product_name,
--     s.year,
--     s.price
-- FROM Sales s
-- LEFT JOIN Product p
-- ON s.product_id = p.product_id;


SELECT 
    sub.product_name,
    s.year,
    s.price
FROM 
    Sales s,
    (SELECT 
         p.product_id, 
         p.product_name 
     FROM 
         Product p) sub
WHERE 
    s.product_id = sub.product_id;