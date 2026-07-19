-- COMPLEX GROUP BY
--
-- GROUP BY can group data using:
-- - Multiple columns
-- - SQL expressions or functions
--
-- Example: Business statistics by business and status

SELECT
    businesses.name AS business_name,
    projects.status,
    COUNT(*) AS project_count,
    SUM(projects.payment) AS total_payment
FROM projects
INNER JOIN businesses
ON projects.business_id = businesses.id
WHERE projects.status IS NOT NULL
GROUP BY
    projects.business_id,
    businesses.name,
    projects.status
ORDER BY
    projects.business_id ASC,
    projects.status ASC;
