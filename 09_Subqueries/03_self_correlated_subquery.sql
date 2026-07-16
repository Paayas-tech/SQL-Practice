-- Topic       : Self-Correlated Subquery

SELECT
    s1.id,
    s1.first_name,
    s1.course_id,
    (
        SELECT COUNT(*)
        FROM students AS s2
        WHERE s2.course_id = s1.course_id
    ) AS students_in_course
FROM students AS s1
WHERE s1.id = 4;