# Write your MySQL query statement below
WITH ranked_logins AS (
    SELECT player_id, event_date,
    ROW_NUMBER() OVER(PARTITION BY player_id ORDER BY event_date ASC) AS rn
    FROM Activity
)

SELECT player_id, event_date AS first_login
FROM ranked_logins
WHERE rn = 1