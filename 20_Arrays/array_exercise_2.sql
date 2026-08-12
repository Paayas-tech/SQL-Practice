-- Lecture 140: Array slicing
-- Get the first three exercises from Friday's workout

SELECT
    exercises[1:3] AS exercises
FROM workouts
WHERE day_of_the_week = 'Friday';

--expected result
{Pull-ups,"Reverse Flyes","Doorway Rows"}