-- ============================================
-- Section 26 - SQL Best Practices
-- ============================================


-- ============================================
-- 1. Avoid SELECT *
-- ============================================

-- Avoid this in application code:

SELECT *
FROM courses;


-- Prefer selecting only required columns:

SELECT
    id,
    name,
    language_name,
    language_level
FROM courses;


-- ============================================
-- 2. Use descriptive aliases
-- ============================================

SELECT
    s.id,
    s.first_name,
    s.last_name,
    c.name AS course_name
FROM students AS s
JOIN courses AS c
    ON c.id = s.course_id;


-- ============================================
-- 3. Use descriptive column names
-- ============================================

SELECT
    id,
    language_name,
    language_level,
    description
FROM courses;


-- ============================================
-- 4. Filtering should happen in the database
-- ============================================

SELECT
    id,
    name,
    language_name
FROM courses
WHERE language_name = 'German';


-- ============================================
-- 5. Use ORDER BY when limiting results
-- ============================================

SELECT
    id,
    name,
    language_name
FROM courses
ORDER BY id
FETCH FIRST 3 ROWS ONLY;


-- PostgreSQL-specific alternative:
-- LIMIT 3


-- ============================================
-- 6. Avoid leading wildcards when possible
-- ============================================

-- This can use an appropriate index more easily:

SELECT
    id,
    name
FROM courses
WHERE language_name LIKE 'Ger%';


-- A leading wildcard generally prevents
-- a normal B-tree index from being useful:

SELECT
    id,
    name
FROM courses
WHERE language_name LIKE '%man';


-- ============================================
-- 7. Filter data before returning it
-- ============================================

SELECT
    id,
    first_name,
    last_name
FROM students
WHERE payment_status = 'pending';


-- ============================================
-- 8. Prefer joins for relational data
-- ============================================

SELECT
    s.first_name,
    s.last_name,
    c.name AS course_name
FROM students AS s
JOIN courses AS c
    ON c.id = s.course_id;


-- ============================================
-- 9. Use standard SQL where practical
-- ============================================

SELECT
    id,
    name
FROM courses
ORDER BY id
FETCH FIRST 1 ROW ONLY;


-- ============================================
-- 10. Use indexes thoughtfully
-- ============================================

-- Foreign-key column:

CREATE INDEX IF NOT EXISTS students_course_id_idx
ON students(course_id);


-- Frequently filtered column:

CREATE INDEX IF NOT EXISTS students_payment_status_idx
ON students(payment_status);


-- Do not create indexes blindly.
-- Indexes also require storage and maintenance.