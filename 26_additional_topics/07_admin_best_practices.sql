-- ============================================
-- Section 26 - Database Administration
-- ============================================


-- ============================================
-- 1. Check PostgreSQL version
-- ============================================

SELECT version();


-- ============================================
-- 2. Check current database
-- ============================================

SELECT current_database();


-- ============================================
-- 3. Check current user
-- ============================================

SELECT current_user;


-- ============================================
-- 4. Check server settings
-- ============================================

SHOW server_version;

SHOW shared_buffers;

SHOW work_mem;


-- ============================================
-- 5. Slow query logging
-- ============================================

-- PostgreSQL can log queries that take longer
-- than a specified duration.

-- Example configuration:

-- ALTER SYSTEM SET log_min_duration_statement = 1000;

-- The value is in milliseconds.
-- 1000 = 1 second.

-- Reload configuration after changing settings:

-- SELECT pg_reload_conf();


-- ============================================
-- 6. Inspect current setting
-- ============================================

SHOW log_min_duration_statement;


-- ============================================
-- 7. Check database size
-- ============================================

SELECT
    current_database() AS database_name,
    pg_size_pretty(
        pg_database_size(current_database())
    ) AS database_size;


-- ============================================
-- 8. Check table sizes
-- ============================================

SELECT
    schemaname,
    relname AS table_name,
    pg_size_pretty(
        pg_total_relation_size(relid)
    ) AS total_size
FROM pg_catalog.pg_statio_user_tables
ORDER BY pg_total_relation_size(relid) DESC;


-- ============================================
-- 9. Check active database connections
-- ============================================

SELECT
    datname,
    usename,
    application_name,
    client_addr,
    state
FROM pg_stat_activity;


-- ============================================
-- 10. Check database permissions
-- ============================================

SELECT
    grantee,
    table_schema,
    table_name,
    privilege_type
FROM information_schema.role_table_grants
WHERE table_schema = 'public'
ORDER BY grantee, table_name;


-- ============================================
-- 11. Example restrictive permissions
-- ============================================

-- Example only.
-- Run this only if the role exists.

-- REVOKE ALL
-- ON courses
-- FROM logging_application;

-- GRANT SELECT
-- ON courses
-- TO logging_application;


-- ============================================
-- 12. Backup reminder
-- ============================================

-- PostgreSQL backups should normally be created
-- using pg_dump or another proper backup strategy.

-- Example command from terminal:

-- pg_dump -U postgres -d section26_db > section26_backup.sql


-- Restore example:

-- psql -U postgres -d section26_db < section26_backup.sql