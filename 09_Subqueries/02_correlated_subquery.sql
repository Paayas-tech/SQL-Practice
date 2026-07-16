-- Topic       : Correlated Subquery

SELECT
    id,
    project_type,
    status,
    (
        SELECT name
        FROM businesses
        WHERE businesses.id = projects.business_id
    ) AS commissioned_by
FROM projects
ORDER BY id ASC;