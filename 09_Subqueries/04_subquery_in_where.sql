-- Topic: Subqueries in WHERE (IN)

SELECT *
FROM students
WHERE course_id IN (
    SELECT id
    FROM courses
    WHERE language_name = 'French'
);