# Write your MySQL query statement below
WITH cte AS (
    SELECT managerId, COUNT(*) AS direct_reports
    FROM Employee
    GROUP BY managerId
    HAVING direct_reports >= 5
)

SELECT name FROM Employee
WHERE id IN (SELECT managerId FROM cte)