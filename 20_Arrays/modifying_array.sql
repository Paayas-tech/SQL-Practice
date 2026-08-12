-- Lecture : Modifying arrays


-- 1. Change an existing array element
UPDATE todos
SET requirements[1] = 'Drink my coffee'
WHERE id = 1;


-- 2. Add an element to the array
UPDATE todos
SET requirements = array_append(
    requirements,
    'Download the software update'
)
WHERE id = 1;


-- 3. Remove an element from the array
UPDATE todos
SET requirements = array_remove(
    requirements,
    'Walk the dog'
)
WHERE id = 2;

----------------------------------------------------------
-- Update NULL values inside an array

UPDATE test_group_feedback
SET scores[2] = 10,
    scores[4] = 9
WHERE participant_id = 9
  AND test_group_id = 3;

  -------------------------------------------

  -- Query A: Find Timmy in Ashley's workshop
SELECT *
FROM workshops
WHERE presenter = 'Ashley Garcia'
  AND 'Timmy Thompson' = ANY(participants);


-- Query B: Remove Timmy from Ashley's workshop
UPDATE workshops
SET participants = ARRAY_REMOVE(participants, 'Timmy Thompson')
WHERE presenter = 'Ashley Garcia';


-- Query C: Add Timmy to David's workshop
UPDATE workshops
SET participants = ARRAY_APPEND(participants, 'Timmy Thompson')
WHERE presenter = 'David Brown';