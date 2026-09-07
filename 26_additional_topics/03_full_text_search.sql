-- ============================================
-- Section 26 - Full-Text Search
-- ============================================

-- View all courses

SELECT
    id,
    language_name,
    name,
    language_level,
    description
FROM courses;


-- ============================================
-- Basic Full-Text Search
-- ============================================

SELECT
    id,
    name,
    description
FROM courses
WHERE to_tsvector('english', description)
      @@ plainto_tsquery('english', 'grammar');


-- ============================================
-- Search for database-related content
-- ============================================

SELECT
    id,
    name,
    description
FROM courses
WHERE to_tsvector('english', description)
      @@ plainto_tsquery('english', 'basic grammar');


-- ============================================
-- Using to_tsquery
-- ============================================

SELECT
    id,
    name,
    description
FROM courses
WHERE to_tsvector('english', description)
      @@ to_tsquery('english', 'grammar');


-- ============================================
-- Search using multiple words
-- ============================================

SELECT
    id,
    name,
    description
FROM courses
WHERE to_tsvector('english', description)
      @@ to_tsquery('english', 'english & grammar');


-- ============================================
-- Search for either word
-- ============================================

SELECT
    id,
    name,
    description
FROM courses
WHERE to_tsvector('english', description)
      @@ to_tsquery('english', 'grammar | vocabulary');


-- ============================================
-- Inspect generated text vector
-- ============================================

SELECT
    name,
    to_tsvector('english', description) AS search_vector
FROM courses;