-- CREATE VIEW Clause 2/2
-- Create a view combining businesses and projects


CREATE VIEW businesses_projects_overview AS
SELECT
    b.name AS business_name,
    p.project_type,
    p.status AS project_status,
    p.priority AS project_priority
FROM projects p
JOIN businesses b
ON p.business_id = b.id;

SELECT
    business_name,
    project_priority,
    COUNT(*) AS projects_count
FROM businesses_projects_overview
GROUP BY
    business_name,
    project_priority
ORDER BY
    business_name ASC,
    project_priority ASC;