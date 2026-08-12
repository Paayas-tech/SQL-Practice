-- Lecture: Unnesting arrays

-- Turn each array element into a separate row
SELECT id, title, requirement
FROM todos,
     unnest(requirements) AS requirement;


-- Search inside the unnested values
SELECT id, title, requirement
FROM todos,
     unnest(requirements) AS requirement
WHERE requirement LIKE '%coffee%';


-- Another example
SELECT id, title, requirement
FROM todos,
     unnest(requirements) AS requirement
WHERE requirement LIKE '%dog%';


-- Coding Exercise: Unnesting an array
-- Get all VIP guests from the Client Appreciation Dinner

SELECT UNNEST(vip_guests) AS vip_name
FROM events
WHERE event_name = 'Client Appreciation Dinner';