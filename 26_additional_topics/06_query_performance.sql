-- ============================================
-- Section 26 - Query Performance
-- ============================================


-- ============================================
-- 1. EXPLAIN
-- ============================================

EXPLAIN
SELECT
    id,
    name,
    language_name
FROM courses
WHERE language_name = 'German';


-- ============================================
-- 2. EXPLAIN ANALYZE
-- ============================================

EXPLAIN ANALYZE
SELECT
    id,
    name,
    language_name
FROM courses
WHERE language_name = 'German';


-- ============================================
-- 3. Query with JOIN
-- ============================================

EXPLAIN ANALYZE
SELECT
    s.first_name,
    s.last_name,
    c.name AS course_name
FROM students AS s
JOIN courses AS c
    ON c.id = s.course_id
WHERE s.payment_status = 'pending';


-- ============================================
-- 4. Query using ORDER BY
-- ============================================

EXPLAIN ANALYZE
SELECT
    id,
    first_name,
    last_name
FROM students
WHERE payment_status = 'pending'
ORDER BY id;


-- ============================================
-- 5. Query with limited results
-- ============================================

EXPLAIN ANALYZE
SELECT
    id,
    first_name,
    last_name
FROM students
WHERE payment_status = 'pending'
ORDER BY id
FETCH FIRST 3 ROWS ONLY;


-- ============================================
-- 6. Inspect table statistics
-- ============================================

SELECT
    schemaname,
    relname,
    n_live_tup,
    n_dead_tup
FROM pg_stat_user_tables
ORDER BY n_live_tup DESC;


-- ============================================
-- 7. Inspect index usage
-- ============================================

SELECT
    schemaname,
    relname,
    indexrelname,
    idx_scan,
    idx_tup_read,
    idx_tup_fetch
FROM pg_stat_user_indexes
ORDER BY idx_scan DESC;