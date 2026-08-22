-- =====================================================
-- KEY TAKEAWAYS
-- =====================================================

-- COLLATION:
-- Defines how textual values are compared and sorted.

-- und-x-icu:
-- Language-independent ICU-based collation.
-- Useful when consistent cross-platform sorting is required.

-- Language-specific collations:
-- Different languages can have different alphabetic
-- and sorting rules.

-- Column-level collation:
-- A collation can be assigned to a column so that it
-- becomes the default for operations involving that column.

-- Indexes:
-- Indexes are tied to their collation.
-- If different collations are required for sorting,
-- separate indexes may be needed.

-- Main use cases:
-- 1. ORDER BY
-- 2. Text comparison
-- 3. Internationalization
-- 4. Localization
-- 5. Language-specific sorting