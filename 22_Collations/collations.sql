-- =====================================================
-- SECTION 22: COLLATIONS
-- =====================================================

-- 1. Basic ordering
SELECT *
FROM cities
ORDER BY name ASC;


-- 2. Using a specific collation
SELECT *
FROM cities
ORDER BY name COLLATE "und-x-icu" ASC;


-- 3. Using POSIX collation
SELECT *
FROM cities
ORDER BY name COLLATE "POSIX" ASC;


-- 4. Applying collation to comparisons
SELECT *
FROM cities
WHERE name COLLATE "und-x-icu" = 'Istanbul';


-- 5. Applying collation to multiple columns
SELECT *
FROM cities
ORDER BY
    name COLLATE "und-x-icu" ASC,
    country COLLATE "und-x-icu" ASC;


-- 6. Language-specific collation
-- Example: German collation
SELECT *
FROM cities
ORDER BY name COLLATE "de-x-icu" ASC;


-- 7. Check query performance with EXPLAIN
EXPLAIN
SELECT *
FROM cities
ORDER BY name COLLATE "und-x-icu" ASC;


-- 8. Important:
-- Indexes are collation-specific.
-- An index created with one collation cannot necessarily
-- be used for a query using another collation.

-- Example index:
CREATE INDEX cities_name_und_x_icu
ON cities (name COLLATE "und-x-icu");


-- Example index with another collation:
CREATE INDEX cities_name_default
ON cities (name COLLATE "default");