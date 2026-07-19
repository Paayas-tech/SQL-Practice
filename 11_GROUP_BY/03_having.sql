SELECT
    businesses.name AS business_name,
    SUM(projects.payment) AS total_payment
FROM businesses
INNER JOIN projects
ON projects.business_id = businesses.id
GROUP BY businesses.name
HAVING SUM(projects.payment) > 100000
ORDER BY businesses.name ASC;