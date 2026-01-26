# Write your MySQL query statement below
DELETE FROM Person
WHERE id IN 
(SELECT t1.id FROM
(SELECT id, ROW_NUMBER() OVER(PARTITION BY email ORDER BY id ASC) AS row_num
FROM Person) t1
WHERE row_num>1
)
