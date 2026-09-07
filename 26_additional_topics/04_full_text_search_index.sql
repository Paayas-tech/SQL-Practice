-- ============================================
-- Section 26 - GIN Full-Text Search Index
-- ============================================

-- ============================================
-- Create GIN index
-- ============================================

CREATE INDEX IF NOT EXISTS courses_description_search_idx
ON courses
USING GIN (
    to_tsvector('english', description)
);


-- ============================================
-- Search using the same expression
-- ============================================

SELECT
    id,
    name,
    description
FROM courses
WHERE to_tsvector('english', description)
      @@ plainto_tsquery('english', 'grammar');


-- ============================================
-- Check query plan
-- ============================================

EXPLAIN
SELECT
    id,
    name,
    description
FROM courses
WHERE to_tsvector('english', description)
      @@ plainto_tsquery('english', 'grammar');


-- ============================================
-- Check actual execution
-- ============================================

EXPLAIN ANALYZE
SELECT
    id,
    name,
    description
FROM courses
WHERE to_tsvector('english', description)
      @@ plainto_tsquery('english', 'grammar');


-- ============================================
-- Inspect indexes
-- ============================================

SELECT
    indexname,
    indexdef
FROM pg_indexes
WHERE tablename = 'courses';