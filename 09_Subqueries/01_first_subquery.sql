-- Scalar Subquery Example

SELECT *
FROM students
WHERE age = (
    SELECT MAX(age)
    FROM students
);